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
     * 'if' '(' expression ')' '{' statements '}' ('else' '{' statements '}')?
     */
    private void CompileIfStatement(SubroutineSymbolTable subroutineSymbolTable)
    {
        var elseLabel = $"L_{_labelNum}";
        _labelNum++;
        var ifLabel = $"L_{_labelNum}";
        _labelNum++;
        
        GetToken(); // if
        GetToken(); // (
        CompileExpression(subroutineSymbolTable); // expression
        GetToken(); // )
        
        // if expression is not true, go to else statement
        Compilation.Add("not");
        Compilation.Add($"if-goto {elseLabel}");
        
        GetToken(); // {
        CompileStatements(subroutineSymbolTable); // statements
        GetToken(); // }
        
        // Skip else section since if statements were executed
        Compilation.Add($"goto {ifLabel}");
        
        // Add else section label to be skipped to if expression is false
        Compilation.Add($"label {elseLabel}");
        
        var elseToken = GetToken(); // else (or there is no else)
        if (elseToken.Value == "else")
        {
            GetToken(); // {
            CompileStatements(subroutineSymbolTable); // statements;
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
     * term (op term)*
     */
    private void CompileExpression(SubroutineSymbolTable subroutineSymbolTable)
    {
        CompileTerm(subroutineSymbolTable); // term

        while (_ops.Contains(_tokens[_currentToken].Value))
        {
            var op = GetToken(); // op
            CompileTerm(subroutineSymbolTable); // term
            
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
    private void CompileTerm(SubroutineSymbolTable subroutineSymbolTable)
    {
        if (_tokens[_currentToken + 1].Value == "[")
        {
            // TODO: handle arrays
            GetToken(); // varName
            GetToken(); // [
            CompileExpression(subroutineSymbolTable); // expression
            GetToken(); // ]
        }
        else if (_tokens[_currentToken].Value == "(")
        {
            GetToken(); // (
            CompileExpression(subroutineSymbolTable); // expression
            GetToken(); // )
        }
        else if (_unaryOps.Contains(_tokens[_currentToken].Value))
        {
            var op = GetToken(); // unaryOp
            CompileTerm(subroutineSymbolTable); // term
            AddUnaryOpToCompilation(op);
        }
        else if (_tokens[_currentToken + 1].Value is "(" or ".")
        {
            CompileSubroutineCall(subroutineSymbolTable); // subroutineCall
        }
        else
        {
            var token = GetToken(); // integerConstant | stringConstant | keywordConstant | varName
            if (token is StringConstantToken)
            {
                var stringLength = token.Value.Length;
                Compilation.Add($"push {stringLength}");
                Compilation.Add("call String.new 1");

                foreach (int c in token.Value)
                {
                    Compilation.Add($"push {c}");
                    Compilation.Add("call String.appendChar 1");
                }
            }
            else if (token is IntegerConstantToken)
            {
                Compilation.Add($"push constant {token.Value}");
            }
            else if (token is KeywordToken keywordToken)
            {
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
            }
            else
            {
                var symbol = subroutineSymbolTable.GetSymbol(token.Value);
                Compilation.Add($"push {(symbol.Kind == "field" ? "this" : symbol.Kind)} {symbol.Index}");
            }
        }
    }

    private void CompileStatements(SubroutineSymbolTable subroutineSymbolTable)
    {
        while (_tokens[_currentToken].Value != "}")
        {
            switch (_tokens[_currentToken].Value)
            {
                case "return":
                    CompileReturnStatement(subroutineSymbolTable);
                    break;
                case "do":
                    CompileDoStatement(subroutineSymbolTable);
                    break;
                case "let":
                    CompileLetStatement(subroutineSymbolTable);
                    break;
                case "while":
                    CompileWhileStatement(subroutineSymbolTable);
                    break;
                case "if":
                    CompileIfStatement(subroutineSymbolTable);
                    break;
                default:
                    throw new InvalidOperationException(_tokens[_currentToken].Value);
            }
        }
    }

    /**
     * 'while' '(' expression ')' '{' statements '}'
     */
    private void CompileWhileStatement(SubroutineSymbolTable subroutineSymbolTable)
    {
        var startLabel = $"L_{_labelNum}";
        _labelNum++;
        var endLabel = $"L_{_labelNum}";
        _labelNum++;
        
        Compilation.Add($"label {startLabel}");
        
        GetToken(); // while
        GetToken(); // (
        CompileExpression(subroutineSymbolTable); // expression
        GetToken(); // )
        
        // if expression is not true, exit while loop
        Compilation.Add("not");
        Compilation.Add($"if-goto {endLabel}");
        
        GetToken(); // {
        CompileStatements(subroutineSymbolTable); // statements
        GetToken(); // }

        // restart loop
        Compilation.Add($"goto {startLabel}");

        // add end label for while loop exit
        Compilation.Add($"label {endLabel}");
    }

    /**
     * 'let' varName ('[' expression ']')? '=' expression ';'
     */
    private void CompileLetStatement(SubroutineSymbolTable subroutineSymbolTable)
    {
        GetToken(); // let
        var name = GetToken(); // varName

        // TODO handle arrays
        if (_tokens[_currentToken].Value == "[")
        {
            GetToken(); // [
            CompileExpression(subroutineSymbolTable); // expression
            GetToken(); //]
        }

        GetToken(); // =
        CompileExpression(subroutineSymbolTable); // expression
        GetToken(); // ;

        // pop the top of the stack (result from expression into the target location (defined earlier in CompileVarDec))
        var target = subroutineSymbolTable.GetSymbol(name.Value);
        Compilation.Add($"pop {(target.Kind == "field" ? "this" : target.Kind)} {target.Index}");
    }

    /**
     * 'do' subroutineCall ';'
     */
    private void CompileDoStatement(SubroutineSymbolTable subroutineSymbolTable)
    {
        GetToken(); // do
        CompileSubroutineCall(subroutineSymbolTable); // leaves the result on the top of the stack
        GetToken(); // ;

        // Ditches the result of the do statement since we never store it
        Compilation.Add("pop temp 0");
    }

    /**
     * subroutineName '(' expressionList ')' | (className|varName) '.' subroutineName '(' expressionList ')'
     */
    private void CompileSubroutineCall(SubroutineSymbolTable subroutineSymbolTable)
    {
        Symbol? symbol;
        
        // push the location of the current object onto the stack
        if (_tokens[_currentToken + 1].Value == ".")
        {
            var name = GetToken().Value;
            GetToken(); // .

            symbol = subroutineSymbolTable.GetSymbol(name);
            if (symbol is not null) // assume name.Value is a var name rather than a built in type
            {
                Compilation.Add($"push {(symbol.Kind == "field" ? "this" : symbol.Kind)} {symbol.Index}");
            }

            var subroutineName = GetToken(); // subroutineName
            GetToken(); // (
            var numExpressions = CompileExpressionList(subroutineSymbolTable); // expressionList
            GetToken(); // )
            
            Compilation.Add($"call {symbol?.Type ?? name}.{subroutineName.Value} {(symbol?.Kind is "field" or "local" ? numExpressions + 1 : numExpressions)}");
        }
        else
        {
            // Calling a local method
            if (subroutineSymbolTable.GetObjectKind() == "constructor")
            {
                Compilation.Add("push pointer 0"); // equivalent to pushing this
                
                var subroutineName = GetToken(); // subroutineName
                GetToken(); // (
                var numExpressions = CompileExpressionList(subroutineSymbolTable); // expressionList
                GetToken(); // )
            
                Compilation.Add($"call {subroutineSymbolTable.GetClassName()}.{subroutineName.Value} {numExpressions + 1}");
            }
            else
            {
                symbol = subroutineSymbolTable.GetSymbol("this"); // nested method call so this should be defined
                Compilation.Add($"push {symbol.Kind} {symbol.Index}");
                
                var subroutineName = GetToken(); // subroutineName
                GetToken(); // (
                var numExpressions = CompileExpressionList(subroutineSymbolTable); // expressionList
                GetToken(); // )
            
                Compilation.Add($"call {symbol.Type}.{subroutineName.Value} {numExpressions + 1}");
            }
        }
    }

    /**
     * (expression (',' expression)* )?
     */
    private int CompileExpressionList(SubroutineSymbolTable subroutineSymbolTable)
    {
        var numExpressions = 0;
        if (_tokens[_currentToken].Value != ")")
        {
            CompileExpression(subroutineSymbolTable); // expression
            numExpressions++;
            
            while (_tokens[_currentToken].Value != ")")
            {
                GetToken(); // '
                CompileExpression(subroutineSymbolTable); // expression
                numExpressions++;
            }
        }

        return numExpressions;
    }

    /**
     * 'return' expression? ';'
     */
    private void CompileReturnStatement(SubroutineSymbolTable subroutineSymbolTable)
    {
        GetToken(); // return

        if (_tokens[_currentToken].Value != ";")
        {
            CompileExpression(subroutineSymbolTable); // expression?
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
    private void CompileVarDec(SubroutineSymbolTable subroutineSymbolTable)
    {
        GetToken(); // 'var'
        var type = GetToken(); // type
        var name = GetToken(); // varName
        
        subroutineSymbolTable.Add(name.Value, type.Value, "local");

        while (_tokens[_currentToken].Value != ";")
        {
            GetToken(); // ,
            var nextName = GetToken(); // varName
            
            subroutineSymbolTable.Add(nextName.Value, type.Value, "local");
        }

        GetToken(); // ;
    }

    /**
     * subroutineDec:
     * ('constructor'|'function'|'method') ('void'|type) subroutineName '(' parameterList ')' subroutineBody
     */
    private void CompileSubroutine(ClassSymbolTable classSymbolTable)
    {
        var kind = GetToken(); // ('constructor'|'function'|'method')
        var type = GetToken(); // ('void'|type)
        var name = GetToken(); // subroutineName

        var subroutineSymbolTable = new SubroutineSymbolTable(name.Value, type.Value, kind.Value, classSymbolTable);

        if (kind.Value == "method")
        {
            subroutineSymbolTable.Add("this", classSymbolTable.GetObjectName(), "argument");
        }
        
        GetToken(); // (
        CompileParameterList(subroutineSymbolTable);
        GetToken(); // )
        CompileSubroutineBody(classSymbolTable, subroutineSymbolTable);
    }

    /**
     * '{' varDec* statements '}'
     */
    private void CompileSubroutineBody(ClassSymbolTable classSymbolTable, SubroutineSymbolTable subroutineSymbolTable)
    {
        GetToken(); // {

        while (_tokens[_currentToken].Value == "var")
        {
            CompileVarDec(subroutineSymbolTable); // varDec*
        }
        
        Compilation.Add(
            $"function {classSymbolTable.GetObjectName()}.{subroutineSymbolTable.GetObjectName()}" +
            $" {subroutineSymbolTable.NumDefined("local")}");

        if (subroutineSymbolTable.GetObjectKind() == "method")
        {
            // Sets the 'this' memory segment to the base address of the object on which the method was called
            Compilation.Add("push argument 0"); // set in CompileSubroutine as first entry in SymbolTable
            Compilation.Add("pop pointer 0");    
        }

        if (subroutineSymbolTable.GetObjectKind() == "constructor")
        {
            // allocates the appropriate memory block and sets the 'this' segment to the base address of the block
            Compilation.Add($"push constant {classSymbolTable.NumDefined("field")}");
            Compilation.Add("call Memory.alloc 1"); // returns the base address
            Compilation.Add("pop pointer 0");
        }
        
        CompileStatements(subroutineSymbolTable); // statements

        GetToken(); // }
    }

    /**
     * ( (type varName) (',' type varName)* )?
     */
    private void CompileParameterList(SubroutineSymbolTable subroutineSymbolTable)
    {
        if (_tokens[_currentToken].Value != ")")
        {
            var type = GetToken(); // type
            var name = GetToken(); // varName
            
            subroutineSymbolTable.Add(name.Value, type.Value, "argument");

            while (_tokens[_currentToken].Value != ")")
            {
                GetToken(); // ,
                var nextType = GetToken(); // type
                var nextName = GetToken(); // varName
                
                subroutineSymbolTable.Add(nextName.Value, nextType.Value, "argument");
            }
        }
    }

    /**
     * ('static'|'field') type varName (',' varName)* ';'
     */
    private void CompileClassVarDec(ClassSymbolTable classSymbolTable)
    {
        var kind = GetToken(); // ('static'|'field')
        var type = GetToken(); // type
        var name = GetToken(); // varName

        classSymbolTable.Add(name.Value, type.Value, kind.Value);

        while (_tokens[_currentToken].Value == ",")
        {
            GetToken(); // ,
            var nextName = GetToken(); // varName
            classSymbolTable.Add(nextName.Value, type.Value, kind.Value);
        }
        
        GetToken(); // ;
    }

    /**
     * 'class' className '{' classVarDec* subroutineDec* '}'
     */
    private void CompileClass()
    {
        var type = GetToken(); // class
        var name = GetToken(); // className
        GetToken(); // {

        var symbolTable = new ClassSymbolTable(name.Value, type.Value, type.Value);

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