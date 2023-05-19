namespace SyntaxAnalyzer;

public class CompilationEngine
{

    
    public IEnumerable<string> Compile(IToken[] tokens, int indentLevel)
    {
        List<string> result = new();
        
        foreach (var token in tokens)
        {
            switch (token.Value)
            {
                case "class":
                    result.Add($"{"".PadLeft(indentLevel * 2)}<class>");
                    result.AddRange(CompileClass(tokens, indentLevel + 1));
                    result.Add($"{"".PadLeft(indentLevel * 2)}</class>");
                    break;
                case "static" or "field":
                    result.Add($"{"".PadLeft(indentLevel * 2)}<classVarDec>");
                    result.AddRange(CompileClassVarDec(tokens, indentLevel + 1));
                    result.Add($"{"".PadLeft(indentLevel * 2)}</classVarDec>");
                    break;
                case "method" or "function" or "constructor":
                    result.Add($"{"".PadLeft(indentLevel * 2)}<subroutineDec>");
                    result.AddRange(CompileSubroutineDec(tokens, indentLevel + 1));
                    result.Add($"{"".PadLeft(indentLevel * 2)}</subroutineDec>");
                    break;
                case "var":
                    result.Add($"{"".PadLeft(indentLevel * 2)}<varDec>");
                    result.AddRange(CompileVarDec(tokens, indentLevel + 1));
                    result.Add($"{"".PadLeft(indentLevel * 2)}</varDec>");
                    break;
                case "let":
                    result.Add($"{"".PadLeft(indentLevel * 2)}<letStatement>");
                    result.AddRange(CompileLetStatement(tokens, indentLevel + 1));
                    result.Add($"{"".PadLeft(indentLevel * 2)}</letStatement>");
                    break;
                case "do":
                    result.Add($"{"".PadLeft(indentLevel * 2)}<doStatement>");
                    result.AddRange(CompileDoStatement(tokens, indentLevel + 1));
                    result.Add($"{"".PadLeft(indentLevel * 2)}</doStatement>");
                    break;
                case "if":
                    result.Add($"{"".PadLeft(indentLevel * 2)}<ifStatement>");
                    result.AddRange(CompileIfStatement(tokens, indentLevel + 1));
                    result.Add($"{"".PadLeft(indentLevel * 2)}</ifStatement>");
                    break;
                case "while":
                    result.Add($"{"".PadLeft(indentLevel * 2)}<whileStatement>");
                    result.AddRange(CompileWhileStatement(tokens, indentLevel + 1));
                    result.Add($"{"".PadLeft(indentLevel * 2)}</whileStatement>");
                    break;
                case "return":
                    result.Add($"{"".PadLeft(indentLevel * 2)}<returnStatement>");
                    result.AddRange(CompileReturnStatement(tokens, indentLevel + 1));
                    result.Add($"{"".PadLeft(indentLevel * 2)}</returnStatement>");
                    break;
            }
        }

        return result;
    }

    private IEnumerable<string> CompileDoStatement(IToken[] tokens, int indentLevel)
    {
        throw new NotImplementedException();
    }

    private IEnumerable<string> CompileLetStatement(IToken[] tokens, int indentLevel)
    {
        throw new NotImplementedException();
    }

    private IEnumerable<string> CompileIfStatement(IToken[] tokens, int indentLevel)
    {
        throw new NotImplementedException();
    }

    private IEnumerable<string> CompileWhileStatement(IToken[] tokens, int indentLevel)
    {
        throw new NotImplementedException();
    }

    private IEnumerable<string> CompileReturnStatement(IToken[] tokens, int indentLevel)
    {
        var result = new List<string>
        {
            KeywordLine(tokens[0], indentLevel),
            SymbolLine(tokens[1], indentLevel)
        };
        
        result.AddRange(Compile(tokens[2..], indentLevel - 1));

        return result;
    }

    private IEnumerable<string> CompileVarDec(IToken[] tokens, int indentLevel)
    {
        var result = new List<string>
        {
            KeywordLine(tokens[0], indentLevel),
            IdentifierLine(tokens[1], indentLevel),
            IdentifierLine(tokens[2], indentLevel),
            SymbolLine(tokens[3], indentLevel)
        };
        
        result.AddRange(Compile(tokens[3..], indentLevel - 1));

        return result;
    }

    private IEnumerable<string> CompileClass(IToken[] tokens, int indentLevel)
    {
        var result = new List<string>
        {
            KeywordLine(tokens[0], indentLevel),
            IdentifierLine(tokens[1], indentLevel),
            SymbolLine(tokens[2], indentLevel)
        };
        
        result.AddRange(Compile(tokens[3..], indentLevel - 1));

        return result;
    }

    private IEnumerable<string> CompileClassVarDec(IToken[] tokens, int indentLevel)
    {
        var result = new List<string>
        {
            KeywordLine(tokens[0], indentLevel),
            KeywordLine(tokens[1], indentLevel),
            IdentifierLine(tokens[2], indentLevel),
            SymbolLine(tokens[3], indentLevel)
        };
        
        result.AddRange(Compile(tokens[4..], indentLevel - 1));

        return result;
    }
    
    private IEnumerable<string> CompileSubroutineDec(IToken[] tokens, int indentLevel)
    {
        var result = new List<string>
        {
            KeywordLine(tokens[0], indentLevel),
            KeywordLine(tokens[1], indentLevel),
            IdentifierLine(tokens[2], indentLevel),
        };
        
        
        
        result.Add(SymbolLine(tokens[3], indentLevel)); // Opening parenthesis
        result.Add($"{"".PadLeft(indentLevel * 2)}<parameterList>");
        
        var (parameterList, remainingTokens) = CompileParameterList(tokens[4..], indentLevel);
        result.AddRange(parameterList);
        
        result.Add($"{"".PadLeft(indentLevel * 2)}</parameterList>");
        result.Add(SymbolLine(remainingTokens[0], indentLevel)); // Closing parenthesis

        
        
        result.Add($"{"".PadLeft(indentLevel * 2)}<subroutineBody>");
        result.Add(SymbolLine(remainingTokens[0], indentLevel + 1));

        var (subRoutineBody, remainingTokens2) = CompileSubroutineBody(remainingTokens[1..], indentLevel + 1);
        result.AddRange(subRoutineBody);
        
        result.Add(SymbolLine(remainingTokens2[0], indentLevel + 1));
        result.Add($"{"".PadLeft(indentLevel * 2)}</subroutineBody>");

        
        
        // Sub routine declaration complete
        result.AddRange(Compile(remainingTokens2[1..], indentLevel - 1));

        return result;
    }

    private (IEnumerable<string> subRoutineBody, IToken[] remainingTokens2) CompileSubroutineBody(IToken[] tokens, int indentLevel)
    {
        throw new NotImplementedException();
    }

    private (IEnumerable<string> parameterList, IToken[] remainingTokens) CompileParameterList(IToken[] tokens, int indentLevel)
    {
        var result = new List<string>();
        
        var currentIndex = 0;
        if (tokens[currentIndex].Value == ")")
        {
            return (result, tokens);
        }

        while (true)
        {
            result.Add(KeywordLine(tokens[currentIndex], indentLevel + 1));
            result.Add(IdentifierLine(tokens[currentIndex + 1], indentLevel + 1));

            if (tokens[currentIndex + 2].Value == ")")
            {
                break;
            }
            
            result.Add(SymbolLine(tokens[currentIndex + 2], indentLevel + 1));
            currentIndex += 3;
        }
        
        return (result, tokens[(currentIndex + 3)..]);
    }

    private static string KeywordLine(IToken token, int indentLevel)
    {
        return $"{"".PadLeft(indentLevel * 2)}<keyword> {token.Value} </keyword>";
    }
    
    private static string IdentifierLine(IToken token, int indentLevel)
    {
        return $"{"".PadLeft(indentLevel * 2)}<identifier> {token.Value} </identifier>";
    }
    
    private static string SymbolLine(IToken token, int indentLevel)
    {
        return $"{"".PadLeft(indentLevel * 2)}<symbol> {token.Value} </symbol>";
    }
}


public class Test
{
    public void CompileClass()
    {

    }

    /*
     * ('static' | 'field') type varName (',' varName)* ;'
     */
    public IEnumerable<string> CompileClassVarDec(IToken[] tokens, int indentLevel)
    {
        var result = new List<string>();
        
        result.Add("<classVarDec>");
        
        /*
         * Add var
         * static | field
         */
        result.Add($"{"".PadLeft(indentLevel * 2)}<keyword> {tokens[0].Value} </keyword>");

        /*
         * Add type:
         * Keyword (int | boolean | char) or Identifier (className)
         */
        result.Add(tokens[1].Type is TokenType.Identifier
            ? $"{"".PadLeft(indentLevel * 2)}<identifier> {tokens[1].Value} </identifier>"
            : $"{"".PadLeft(indentLevel * 2)}<keyword> {tokens[1].Value} </keyword>");
        
        /*
         * Add comma-separated varNames
         * There is always at least 1 varName
         */
        var currentToken = 2;
        while (tokens[currentToken].Value != ";")
        {
            result.Add(CompileIdentifier(tokens[currentToken], indentLevel));
            currentToken++;

            if (tokens[currentToken].Value == ",")
            {
                result.Add($"{"".PadLeft(indentLevel * 2)}<symbol> {tokens[currentToken].Value} </symbol>");
                currentToken++;
            }
        }
        
        /*
         * Add closing semicolon
         */
        result.Add($"{"".PadLeft(indentLevel * 2)}<symbol> {tokens[currentToken].Value} </symbol>");

        result.Add("</classVarDec>");

        return result;
    }

    /*
     * 'var' type varName (',' varName)* ';'
     */
    public IEnumerable<string> CompileVarDev(IToken[] tokens, int indentLevel)
    {
        var result = new List<string>();
        
        result.Add("<varDec>");
        
        /*
         * Add var
         * var
         */
        result.Add($"{"".PadLeft(indentLevel * 2)}<keyword> {tokens[0].Value} </keyword>");

        /*
         * Add type:
         * Keyword (int | boolean | char) or Identifier (className)
         */
        result.Add(tokens[1].Type is TokenType.Identifier
            ? $"{"".PadLeft(indentLevel * 2)}<identifier> {tokens[1].Value} </identifier>"
            : $"{"".PadLeft(indentLevel * 2)}<keyword> {tokens[1].Value} </keyword>");
        
        /*
         * Add comma-separated varNames
         * There is always at least 1 varName
         */
        var currentToken = 2;
        while (tokens[currentToken].Value != ";")
        {
            result.Add(CompileIdentifier(tokens[currentToken], indentLevel));
            currentToken++;

            if (tokens[currentToken].Value == ",")
            {
                result.Add($"{"".PadLeft(indentLevel * 2)}<symbol> {tokens[currentToken].Value} </symbol>");
                currentToken++;
            }
        }
        
        /*
         * Add closing semicolon
         */
        result.Add($"{"".PadLeft(indentLevel * 2)}<symbol> {tokens[currentToken].Value} </symbol>");

        result.Add("</varDec>");

        return result;
    }

    /*
     * statement*
     */
    public IEnumerable<string> CompileStatements(IToken[] tokens, int indentLevel)
    {
        var result = new List<string>();
        
        // There are no statements so return empty list
        if (tokens[0].Value == "}")
        {
            return result;
        }

        var currentToken = 0;
        while (true)
        {
        }

        return result;
    }

    /*
     * letStatement | doStatement | ifStatement | whileStatement | returnStatement
     */
    public IEnumerable<string> CompileStatement(IToken[] tokens, int indentLevel)
    {
        return tokens[0].Value switch
        {
            "let" => CompileLetStatement(tokens, indentLevel),
            "do" => CompileDoStatement(tokens, indentLevel),
            "if" => CompileIfStatement(tokens, indentLevel),
            "while" => CompileWhileStatement(tokens, indentLevel),
            "return" => CompileReturnStatement(tokens, indentLevel),
            _ => throw new ArgumentOutOfRangeException(tokens[0].Value, "Not a valid statement type.")
        };
    }

    public IEnumerable<string> CompileLetStatement(IToken[] tokens, int indentLevel)
    {
        throw new NotImplementedException();
    }

    /*
     * 'do' subroutineCall ';'
     */
    public IEnumerable<string> CompileDoStatement(IToken[] tokens, int indentLevel)
    {
        var result = new List<string>();
        
        result.Add($"{"".PadLeft(indentLevel * 2)}<doStatement>");
        
        result.Add(CompileKeyword(tokens[0], indentLevel + 1));

        var (compileSubRoutineCall, tokensUsed) = CompileSubRoutineCall(tokens[1..], indentLevel + 1);
        result.AddRange(compileSubRoutineCall);

        result.Add(CompileSymbol(tokens[tokensUsed + 1], indentLevel + 1));
        
        result.Add($"{"".PadLeft(indentLevel * 2)}</doStatement>");

        return result;
    }

    /*
     * subroutineName '(' expressionList ')' | (className | varName) '.' subroutineName '(' expressionList ')'
     *
     * returns number of tokens used
     */
    public (IEnumerable<string>, int) CompileSubRoutineCall(IToken[] tokens, int indentLevel)
    {
        var result = new List<string>();
        var currentToken = 0;
        
        result.Add(CompileIdentifier(tokens[currentToken], indentLevel));
        currentToken++;

        if (tokens[currentToken].Value == ".")
        {
            result.Add(CompileSymbol(tokens[currentToken], indentLevel));
            currentToken++;
            
            result.Add(CompileIdentifier(tokens[currentToken], indentLevel));
            currentToken++;
        }

        result.Add(CompileSymbol(tokens[currentToken], indentLevel));
        currentToken++;
        
        // TODO add expression support
            
        result.Add(CompileSymbol(tokens[currentToken], indentLevel));
        currentToken++;
        
        return (result, currentToken);
    }

    public IEnumerable<string> CompileIfStatement(IToken[] tokens, int indentLevel)
    {
        throw new NotImplementedException();
    }

    public IEnumerable<string> CompileWhileStatement(IToken[] tokens, int indentLevel)
    {
        throw new NotImplementedException();
    }

    /*
     * 'return' expression? ';'
     */
    public IEnumerable<string> CompileReturnStatement(IToken[] tokens, int indentLevel)
    {
        var result = new List<string>();
        
        result.Add($"{"".PadLeft(indentLevel * 2)}<returnStatement>");
        
        result.Add(CompileKeyword(tokens[0], indentLevel + 1));
        
        // TODO add expression support

        result.Add(CompileSymbol(tokens[1], indentLevel + 1));
        
        result.Add($"{"".PadLeft(indentLevel * 2)}</returnStatement>");

        return result;
    }

    public string CompileIdentifier(IToken currentToken, int indentLevel)
    {
        return $"{"".PadLeft(indentLevel * 2)}<identifier> {currentToken.Value} </identifier>";
    }
    
    public string CompileKeyword(IToken currentToken, int indentLevel)
    {
        return $"{"".PadLeft(indentLevel * 2)}<keyword> {currentToken.Value} </keyword>";
    }
    
    public string CompileSymbol(IToken currentToken, int indentLevel)
    {
        return $"{"".PadLeft(indentLevel * 2)}<symbol> {currentToken.Value} </symbol>";
    }
}