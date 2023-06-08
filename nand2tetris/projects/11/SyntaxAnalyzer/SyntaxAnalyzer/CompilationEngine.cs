namespace SyntaxAnalyzer;

public class CompilationEngine
{
    public readonly List<string> Compilation = new();

    private readonly List<string> _ops = new() { "+", "-", "*", "/", "&amp;", "|", "&lt;", "&gt;", "=" };
    private readonly List<string> _unaryOps = new() { "-", "~" };
    private readonly IToken[] _tokens;
    private int _currentToken;
    private int _labelNum;

    public CompilationEngine(IEnumerable<IToken> tokens)
    {
        _tokens = tokens.ToArray();
    }

    public void Compile()
    {
        // We know the first token is always 'class' and there is
        // only one class per file
        CompileClass();
    }

    /**
     * term (op term)*
     */
    private void CompileExpression(SymbolTable symbolTable)
    {
        CompileTerm(symbolTable); // term

        while (_ops.Contains(_tokens[_currentToken].Value))
        {
            var op = GetToken(); // op
            CompileTerm(symbolTable); // term
            
            AddOpToCompilation(op);
        }
    }

    private void AddOpToCompilation(IToken op)
    {
        switch (op.Value)
        {
            case "+":
                Compilation.Add("add");
                break;
            case "-":
                Compilation.Add("sub");
                break;
            case "*":
                Compilation.Add("call Math.multiply 2");
                break;
            case "/":
                Compilation.Add("call Math.divide 2");
                break;
            case "&amp;":
                Compilation.Add("and");
                break;
            case "|":
                Compilation.Add("or");
                break;
            case "&lt;":
                Compilation.Add("lt");
                break;
            case "&gt;":
                Compilation.Add("gt");
                break;
            case "=":
                Compilation.Add("eq");
                break;
            default:
                throw new Exception($"Not a valid op: {op}");
        }
    }
    
    private void AddUnaryOpToCompilation(IToken op)
    {
        switch (op.Value)
        {
            case "-":
                Compilation.Add("not");
                break;
            case "~":
                Compilation.Add("not");
                break;
        }
    }


    /**
     * integerConstant | stringConstant | keywordConstant | varName |
     * varName '[' expression ']' | '(' expression ')' | (unaryOp term) |
     * subroutineCall
     */
    private void CompileTerm(SymbolTable symbolTable)
    {
        if (_tokens[_currentToken + 1].Value == "[")
        {
            var name = GetToken(); // varName
            GetToken(); // [

            CompileExpression(symbolTable); // expression

            var target = symbolTable.GetSymbol(name.Value);
            Compilation.Add($"push {target.Kind} {target.Index}"); // push base index of array
            
            Compilation.Add("add"); // add to base index of array
            
            Compilation.Add("pop pointer 1"); // store target address in THAT
            
            Compilation.Add("push that 0"); // push value at target address onto stack
            
            GetToken(); // ]
        }
        else if (_tokens[_currentToken].Value == "(")
        {
            GetToken(); // (
            CompileExpression(symbolTable); // expression
            GetToken(); // )
        }
        else if (_unaryOps.Contains(_tokens[_currentToken].Value))
        {
            var op = GetToken(); // unaryOp
            CompileTerm(symbolTable); // term
            AddUnaryOpToCompilation(op);
        }
        else if (_tokens[_currentToken + 1].Value is "(" or ".")
        {
            CompileSubroutineCall(symbolTable); // subroutineCall
        }
        else
        {
            var token = GetToken(); // integerConstant | stringConstant | keywordConstant | varName
            switch (token)
            {
                case StringConstantToken:
                {
                    var stringLength = token.Value.Length;
                    Compilation.Add($"push constant {stringLength}");
                    Compilation.Add("call String.new 1");

                    foreach (int c in token.Value)
                    {
                        Compilation.Add($"push constant {c}");
                        Compilation.Add("call String.appendChar 2");
                    }

                    break;
                }
                case IntegerConstantToken:
                    Compilation.Add($"push constant {token.Value}");
                    break;
                case KeywordToken keywordToken:
                    switch (keywordToken.Value)
                    {
                        case "true":
                            Compilation.Add("push constant 0");
                            Compilation.Add("not");
                            break;
                        case "false":
                            Compilation.Add("push constant 0");
                            break;
                        case "null":
                            Compilation.Add("push constant 0");
                            break;
                        case "this":
                            Compilation.Add("push pointer 0");
                            break;
                    }

                    break;
                default:
                {
                    var symbol = symbolTable.GetSymbol(token.Value);
                    Compilation.Add($"push {symbol.Kind} {symbol.Index}");
                    break;
                }
            }
        }
    }

    private void CompileStatements(SymbolTable symbolTable)
    {
        while (_tokens[_currentToken].Value != "}")
        {
            switch (_tokens[_currentToken].Value)
            {
                case "return":
                    CompileReturnStatement(symbolTable);
                    break;
                case "do":
                    CompileDoStatement(symbolTable);
                    break;
                case "let":
                    CompileLetStatement(symbolTable);
                    break;
                case "while":
                    CompileWhileStatement(symbolTable);
                    break;
                case "if":
                    CompileIfStatement(symbolTable);
                    break;
                default:
                    throw new InvalidOperationException(_tokens[_currentToken].Value);
            }
        }
    }

    /**
     * 'if' '(' expression ')' '{' statements '}' ('else' '{' statements '}')?
     */
    private void CompileIfStatement(SymbolTable symbolTable)
    {
        var elseLabel = $"L_{_labelNum}";
        _labelNum++;
        var ifLabel = $"L_{_labelNum}";
        _labelNum++;
        
        GetToken(); // if
        GetToken(); // (
        CompileExpression(symbolTable); // expression
        GetToken(); // )
        
        // if expression is not true, go to else statement
        Compilation.Add("not");
        Compilation.Add($"if-goto {elseLabel}");
        
        GetToken(); // {
        CompileStatements(symbolTable); // statements
        GetToken(); // }
        
        // Skip else section since if statements were executed
        Compilation.Add($"goto {ifLabel}");
        
        // Add else section label to be skipped to if expression is false
        Compilation.Add($"label {elseLabel}");
        
        var elseToken = GetToken(); // else (or there is no else)
        if (elseToken.Value == "else")
        {
            GetToken(); // {
            CompileStatements(symbolTable); // statements;
            GetToken(); // }
        }
        else
        {
            _currentToken--; // put token back
        }

        // Provide continuation label
        Compilation.Add($"label {ifLabel}");
    }

    /**
     * 'while' '(' expression ')' '{' statements '}'
     */
    private void CompileWhileStatement(SymbolTable symbolTable)
    {
        var startLabel = $"L_{_labelNum}";
        _labelNum++;
        var endLabel = $"L_{_labelNum}";
        _labelNum++;
        
        Compilation.Add($"label {startLabel}");
        
        GetToken(); // while
        GetToken(); // (
        CompileExpression(symbolTable); // expression
        GetToken(); // )
        
        // if expression is not true, exit while loop
        Compilation.Add("not");
        Compilation.Add($"if-goto {endLabel}");
        
        GetToken(); // {
        CompileStatements(symbolTable); // statements
        GetToken(); // }

        // restart loop
        Compilation.Add($"goto {startLabel}");

        // add end label for while loop exit
        Compilation.Add($"label {endLabel}");
    }

    /**
     * 'let' varName ('[' expression ']')? '=' expression ';'
     */
    private void CompileLetStatement(SymbolTable symbolTable)
    {
        GetToken(); // let

        var name = GetToken().Value; // varName
        var target = symbolTable.GetSymbol(name);

        if (_tokens[_currentToken].Value == "[")
        {
            Compilation.Add($"push {target.Kind} {target.Index}"); // push array base index onto stack
            
            GetToken(); // [
            
            CompileExpression(symbolTable); // expression
            
            Compilation.Add("add"); // add expression result to base index of array

            GetToken(); // ]
            
            GetToken(); // =

            CompileExpression(symbolTable); // expression

            Compilation.Add("pop temp 0"); // save the result of the right side expression

            Compilation.Add("pop pointer 1"); // store target address of left side in THAT

            Compilation.Add("push temp 0"); // put the right side expression back on the stack

            Compilation.Add("pop that 0"); // store the result in the left side target address

            GetToken(); // ;
        }
        else
        {
            GetToken(); // =

            CompileExpression(symbolTable); // expression

            GetToken(); // ;
            
            Compilation.Add($"pop {target.Kind} {target.Index}"); // pop expression result into index of varName
        }
    }

    /**
     * 'do' subroutineCall ';'
     */
    private void CompileDoStatement(SymbolTable symbolTable)
    {
        GetToken(); // do
        CompileSubroutineCall(symbolTable); // leaves the result on the top of the stack
        GetToken(); // ;

        // Ditches the result of the do statement since we never store it
        Compilation.Add("pop temp 0");
    }

    /**
     * subroutineName '(' expressionList ')' | (className|varName) '.' subroutineName '(' expressionList ')'
     */
    private void CompileSubroutineCall(SymbolTable symbolTable)
    {
        Symbol? symbol;
        
        // push the location of the current object onto the stack
        if (_tokens[_currentToken + 1].Value == ".")
        {
            var name = GetToken().Value; // className|varName
            GetToken(); // .

            symbol = symbolTable.GetSymbol(name);
            if (symbol is not null)
            {
                // name is a varName (rather than a className)
                Compilation.Add($"push {symbol.Kind} {symbol.Index}");
            }

            var subroutineName = GetToken(); // subroutineName
            GetToken(); // (
            var numExpressions = CompileExpressionList(symbolTable); // expressionList
            GetToken(); // )

            if (symbol is not null)
            {
                // name is a varName so use its associated Type (i.e. class name).
                // TODO: do I need this and local? - symbol.Kind is "this" or "local" ? numExpressions + 1 : numExpressions
                Compilation.Add($"call {symbol.Type}.{subroutineName.Value} {numExpressions + 1}");
            }
            else
            {
                // name is a class name, so just use it and don't add the the extra argument
                Compilation.Add($"call {name}.{subroutineName.Value} {numExpressions}");
            }
        }
        else // Calling a local method
        {
            if (symbolTable.GetSubroutineKind() == "constructor")
            {
                Compilation.Add("push pointer 0"); // equivalent to pushing this
                
                var subroutineName = GetToken(); // subroutineName
                GetToken(); // (
                var numExpressions = CompileExpressionList(symbolTable); // expressionList
                GetToken(); // )
            
                Compilation.Add($"call {symbolTable.GetClassName()}.{subroutineName.Value} {numExpressions + 1}");
            }
            else
            {
                symbol = symbolTable.GetSymbol("this"); // nested method call so this should be defined
                Compilation.Add($"push {symbol.Kind} {symbol.Index}");
                
                var subroutineName = GetToken(); // subroutineName
                GetToken(); // (
                var numExpressions = CompileExpressionList(symbolTable); // expressionList
                GetToken(); // )
            
                Compilation.Add($"call {symbol.Type}.{subroutineName.Value} {numExpressions + 1}");
            }
        }
    }

    /**
     * (expression (',' expression)* )?
     */
    private int CompileExpressionList(SymbolTable symbolTable)
    {
        var numExpressions = 0;
        if (_tokens[_currentToken].Value != ")")
        {
            CompileExpression(symbolTable); // expression
            numExpressions++;
            
            while (_tokens[_currentToken].Value != ")")
            {
                GetToken(); // '
                CompileExpression(symbolTable); // expression
                numExpressions++;
            }
        }

        return numExpressions;
    }

    /**
     * 'return' expression? ';'
     */
    private void CompileReturnStatement(SymbolTable symbolTable)
    {
        GetToken(); // return

        if (_tokens[_currentToken].Value != ";")
        {
            CompileExpression(symbolTable); // expression?
        }
        else
        {
            Compilation.Add("push constant 0");
        }

        Compilation.Add("return");

        GetToken(); // ;
    }

    /**
     * 'var' type varName (',' varName)* ';'
     */
    private void CompileVarDec(SymbolTable symbolTable)
    {
        GetToken(); // 'var'
        var type = GetToken(); // type
        var name = GetToken(); // varName
        
        symbolTable.AddVar(name.Value, type.Value);

        while (_tokens[_currentToken].Value != ";")
        {
            GetToken(); // ,
            var nextName = GetToken(); // varName
            
            symbolTable.AddVar(nextName.Value, type.Value);
        }

        GetToken(); // ;
    }

    /**
     * subroutineDec:
     * ('constructor'|'function'|'method') ('void'|type) subroutineName '(' parameterList ')' subroutineBody
     */
    private void CompileSubroutine(SymbolTable symbolTable)
    {
        var kind = GetToken(); // ('constructor'|'function'|'method')
        var type = GetToken(); // ('void'|type)
        var name = GetToken(); // subroutineName

        symbolTable.CreateSubroutineSymbolTable(kind.Value);
        
        GetToken(); // (
        CompileParameterList(symbolTable);
        GetToken(); // )
        CompileSubroutineBody(symbolTable, name.Value);
    }

    /**
     * '{' varDec* statements '}'
     */
    private void CompileSubroutineBody(SymbolTable symbolTable, string subroutineName)
    {
        GetToken(); // {

        while (_tokens[_currentToken].Value == "var")
        {
            CompileVarDec(symbolTable); // varDec*
        }
        
        Compilation.Add($"function {symbolTable.GetClassName()}.{subroutineName} {symbolTable.NumDefined("var")}");

        if (symbolTable.GetSubroutineKind() == "method")
        {
            // Sets the 'this' memory segment (initialized when creating the subroutine symbol table)
            // to the base address of the object on which the method was called
            Compilation.Add("push argument 0");
            Compilation.Add("pop pointer 0");    
        }

        if (symbolTable.GetSubroutineKind() == "constructor")
        {
            // allocates the appropriate memory block and sets the 'this' segment to the base address of the block
            Compilation.Add($"push constant {symbolTable.NumDefined("field")}");
            Compilation.Add("call Memory.alloc 1"); // returns the base address
            Compilation.Add("pop pointer 0");
        }
        
        CompileStatements(symbolTable); // statements

        GetToken(); // }
    }

    /**
     * ( (type varName) (',' type varName)* )?
     */
    private void CompileParameterList(SymbolTable symbolTable)
    {
        if (_tokens[_currentToken].Value != ")")
        {
            var type = GetToken(); // type
            var name = GetToken(); // varName
            
            symbolTable.AddParameter(name.Value, type.Value);

            while (_tokens[_currentToken].Value != ")")
            {
                GetToken(); // ,
                var nextType = GetToken(); // type
                var nextName = GetToken(); // varName
                
                symbolTable.AddParameter(nextName.Value, nextType.Value);
            }
        }
    }

    /**
     * ('static'|'field') type varName (',' varName)* ';'
     */
    private void CompileClassVarDec(SymbolTable symbolTable)
    {
        var kind = GetToken(); // ('static'|'field')
        var type = GetToken(); // type
        var name = GetToken(); // varName

        symbolTable.AddClassVar(name.Value, type.Value, kind.Value);

        while (_tokens[_currentToken].Value == ",")
        {
            GetToken(); // ,
            var nextName = GetToken(); // varName
            symbolTable.AddClassVar(nextName.Value, type.Value, kind.Value);
        }
        
        GetToken(); // ;
    }

    /**
     * 'class' className '{' classVarDec* subroutineDec* '}'
     */
    private void CompileClass()
    {
        GetToken(); // class
        var name = GetToken(); // className
        GetToken(); // {

        var symbolTable = new SymbolTable(name.Value);

        while (_tokens[_currentToken].Value is "static" or "field")
        {
            CompileClassVarDec(symbolTable); // classVarDec*
        }

        while (_tokens[_currentToken].Value is "method" or "function" or "constructor")
        {
            CompileSubroutine(symbolTable); // subroutineDec*
        }
        
        GetToken(); // }
    }

    private IToken GetToken()
    {
        var token = _tokens[_currentToken];
        _currentToken++;
        return token;
    }
}