namespace SyntaxAnalyzer;

public class CompilationEngine
{
    public readonly List<string> Compilation = new();

    private readonly List<string> _ops = new() { "+", "-", "*", "/", "&", "|", "<", ">" };
    private readonly List<string> _unaryOps = new() { "-", "~" };
    private readonly IToken[] _tokens;
    private int _indentLevel;
    private int _currentToken;

    public CompilationEngine(IEnumerable<IToken> tokens)
    {
        _tokens = tokens.ToArray();
    }

    public void Compile()
    {
        // We know the first token is always 'class' and there is
        // only one class per file
        switch (_tokens[_currentToken].Value)
        {
            case "class":
                CompileClass();
                break;
            case "static" or "field":
                CompileClassVarDec();
                break;
            case "method" or "function" or "constructor":
                CompileSubroutine();
                break;
            case "var":
                CompileVarDec();
                break;
            case "return":
                CompileReturnStatement();
                break;
            case "do":
                CompileDoStatement();
                break;
            case "let":
                CompileLetStatement();
                break;
            case "while":
                CompileWhileStatement();
                break;
            case "if":
                CompileIfStatement();
                break;
            default:
                throw new InvalidOperationException(_tokens[_currentToken].Value);
        }
    }

    /**
     * 'if' '(' expression ')' '{' statements '}' ('else' '{' statements '}')?
     */
    private void CompileIfStatement()
    {
        Compilation.Add(WithIndent("<ifStatement>"));
        _indentLevel++;
        
        AddToken(); // if
        AddToken(); // (

        CompileExpression(); // expression
        
        AddToken(); // )
        AddToken(); // {

        CompileStatements(); // statements
        
        AddToken(); // }

        if (_tokens[_currentToken].Value == "else")
        {
            AddToken(); // else
            AddToken(); // {
            
            CompileStatements(); // statements;

            AddToken(); // }
        }
        
        _indentLevel--;
        Compilation.Add(WithIndent("</ifStatement>"));
    }

    /**
     * term (op term)*
     */
    private void CompileExpression()
    {
        Compilation.Add(WithIndent("<expression>"));
        _indentLevel++;

        CompileTerm(); // term

        while (_ops.Contains(_tokens[_currentToken].Value))
        {
            AddToken(); // op
            CompileTerm(); // term
        }

        _indentLevel--;
        Compilation.Add(WithIndent("</expression>"));
    }

    /**
     * integerConstant | stringConstant | keywordConstant | varName |
     * varName '[' expression ']' | '(' expression ')' | (unaryOp term) |
     * subroutineCall
     */
    private void CompileTerm()
    {
        Compilation.Add(WithIndent("<term>"));
        _indentLevel++;

        if (_tokens[_currentToken + 1].Value == "[")
        {
            AddToken(); // varName
            AddToken(); // [
            CompileExpression(); // expression
            AddToken(); // ]
        }
        else if (_tokens[_currentToken].Value == "(")
        {
            AddToken(); // (
            CompileExpression(); // expression
            AddToken(); // )
        }
        else if (_unaryOps.Contains(_tokens[_currentToken].Value))
        {
            AddToken(); // unaryOp
            CompileTerm(); // term
        }
        else if (_tokens[_currentToken + 2].Value is "(" or ".")
        {
            CompileSubroutineCall(); // subroutineCall
        }
        else
        {
            AddToken(); // integerConstant | stringConstant | keywordConstant | varName
        }
        
        _indentLevel--;
        Compilation.Add(WithIndent("</term>"));
    }

    private void CompileStatements()
    {
        Compilation.Add(WithIndent("<statements>"));
        _indentLevel++;

        while (_tokens[_currentToken].Value != "}")
        {
            Compile();
        }

        _indentLevel--;
        Compilation.Add(WithIndent("</statements>"));
    }

    /**
     * 'while' '(' expression ')' '{' statements '}'
     */
    private void CompileWhileStatement()
    {
        Compilation.Add(WithIndent("<whileStatement>"));
        _indentLevel++;
        
        AddToken(); // while
        AddToken(); // (
        CompileExpression(); // expression
        AddToken(); // )
        AddToken(); // {

        CompileStatements(); // statements
        
        AddToken(); // }

        _indentLevel--;
        Compilation.Add(WithIndent("</whileStatement>"));
    }

    /**
     * 'let' varName ('[' expression ']')? '=' expression ';'
     */
    private void CompileLetStatement()
    {
        Compilation.Add(WithIndent("<letStatement>"));
        _indentLevel++;
        
        AddToken(); // let
        AddToken(); // varName

        if (_tokens[_currentToken].Value == "[")
        {
            AddToken(); // [
            CompileExpression(); // expression
            AddToken(); //]
        }

        AddToken(); // =
        CompileExpression(); // expression
        AddToken(); // ;

        _indentLevel--;
        Compilation.Add(WithIndent("</letStatement>"));
    }

    /**
     * 'do' subroutineCall ';'
     */
    private void CompileDoStatement()
    {
        Compilation.Add(WithIndent("<doStatement>"));
        _indentLevel++;

        AddToken(); // do
        CompileSubroutineCall();
        AddToken(); // ;

        _indentLevel--;
        Compilation.Add(WithIndent("</doStatement>"));
    }

    /**
     * subroutineName '(' expressionList ')' | (className|varName) '.' subroutineName '(' expressionList ')'
     */
    private void CompileSubroutineCall()
    {
        if (_tokens[_currentToken + 1].Value == ".")
        {
            AddToken(); // (className|varName)
            AddToken(); // .
        }
        
        AddToken(); // subroutineName
        AddToken(); // (
        CompileExpressionList(); // expressionList
        AddToken(); // )
    }

    /**
     * (expression (',' expression)* )?
     */
    private void CompileExpressionList()
    {
        Compilation.Add(WithIndent("<expressionList>"));
        _indentLevel++;

        if (_tokens[_currentToken].Value != ")")
        {
            CompileExpression(); // expression

            while (_tokens[_currentToken].Value != ")")
            {
                AddToken(); // '
                CompileExpression(); // expression
            }
        }

        _indentLevel--;
        Compilation.Add(WithIndent("</expressionList>"));
    }

    /**
     * 'return' expression? ';'
     */
    private void CompileReturnStatement()
    {
        Compilation.Add(WithIndent("<returnStatement>"));
        _indentLevel++;
        
        AddToken(); // return

        if (_tokens[_currentToken].Value != ";")
        {
            CompileExpression(); // expression
        }

        AddToken(); // ;
        
        _indentLevel--;
        Compilation.Add(WithIndent("</returnStatement>"));
    }

    /**
     * 'var' type varName (',' varName)* ';'
     */
    private void CompileVarDec()
    {
        Compilation.Add(WithIndent("<varDec>"));
        _indentLevel++;
        
        AddToken(); // 'var'
        AddToken(); // type
        AddToken(); // varName

        while (_tokens[_currentToken].Value != ";")
        {
            AddToken(); // ,
            AddToken(); // varName
        }

        AddToken(); // ;
        
        _indentLevel--;
        Compilation.Add(WithIndent("</varDec>"));
    }

    /**
     * subroutineDec:
     * ('constructor'|'function'|'method') ('void'|type) subroutineName '(' parameterList ')' subroutineBody
     */
    private void CompileSubroutine()
    {
        Compilation.Add(WithIndent("<subroutineDec>"));
        _indentLevel++;
        
        AddToken(); // ('constructor'|'function'|'method')
        AddToken(); // ('void'|type)
        AddToken(); // subroutineName
        AddToken(); // (
        CompileParameterList();
        AddToken(); // )
        CompileSubroutineBody();

        _indentLevel--;
        Compilation.Add(WithIndent("</subroutineDec>"));
    }

    /**
     * '{' varDec* statements '}'
     */
    private void CompileSubroutineBody()
    {
        Compilation.Add(WithIndent("<subroutineBody>"));
        _indentLevel++;
        
        AddToken(); // {

        while (_tokens[_currentToken].Value == "var")
        {
            Compile(); // varDec
        }
        
        CompileStatements(); // statements

        AddToken(); // }

        _indentLevel--;
        Compilation.Add(WithIndent("</subroutineBody>"));
    }

    /**
     * ( (type varName) (',' type varName)* )?
     */
    private void CompileParameterList()
    {
        Compilation.Add(WithIndent("<parameterList>"));
        _indentLevel++;

        if (_tokens[_currentToken].Value != ")")
        {
            AddToken(); // type
            AddToken(); // varName

            while (_tokens[_currentToken].Value != ")")
            {
                AddToken(); // ,
                AddToken(); // type
                AddToken(); // varName
            }
        }

        _indentLevel--;
        Compilation.Add(WithIndent("</parameterList>"));
    }

    /**
     * ('static'|'field') type varName (',' varName)* ';'
     */
    private void CompileClassVarDec()
    {
        Compilation.Add(WithIndent("<classVarDec>"));
        _indentLevel++;
        
        AddToken(); // ('static'|'field')
        AddToken(); // type
        AddToken(); // varName

        while (_tokens[_currentToken].Value == ",")
        {
            AddToken(); // ,
            AddToken(); // varName
        }
        
        AddToken(); // ;

        _indentLevel--;
        Compilation.Add(WithIndent("</classVarDec>"));
    }

    /**
     * 'class' className '{' classVarDec* subroutineDec* '}'
     */
    private void CompileClass()
    {
        Compilation.Add(WithIndent("<class>"));
        _indentLevel++;
        
        AddToken(); // class
        AddToken(); // className
        AddToken(); // {

        while (_tokens[_currentToken].Value != "}")
        {
            Compile(); // classVarDec* subroutineDec*
        }
        
        AddToken(); // }

        _indentLevel--;
        Compilation.Add(WithIndent("</class>"));
    }

    private void AddToken()
    {
        Compilation.Add(WithIndent(_tokens[_currentToken].ToString()));
        _currentToken++;
    }

    private string WithIndent(string? line) => $"{"".PadLeft(_indentLevel * 2)}{line}";
}