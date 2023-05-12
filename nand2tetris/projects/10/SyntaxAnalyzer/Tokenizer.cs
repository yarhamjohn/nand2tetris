namespace SyntaxAnalyzer;

public class Tokenizer
{
    public IEnumerable<IToken> Tokenize(string filePath)
    {
        return ParseFile(filePath).SelectMany(Parse);
    }

    private IEnumerable<IToken> Parse(string line)
    {
        var tokens = new List<IToken>();
        
        if (line.StartsWith("class"))
        {
            tokens.Add(new KeywordToken("class"));
            
            var className = line.Split(" ")[1];
            tokens.Add(new IdentifierToken(className));
            
            tokens.Add(new SymbolToken("{"));
        }

        if (line.StartsWith("function"))
        {
            tokens.Add(new KeywordToken("function"));
            
            var returnType = line.Split(" ")[1];
            tokens.Add(new KeywordToken(returnType));
            
            var functionName = line.Split(" ")[2].Split("(")[0];
            tokens.Add(new IdentifierToken(functionName));
            
            tokens.Add(new SymbolToken("("));
            
            // TODO handle parameters
            
            tokens.Add(new SymbolToken(")"));
            tokens.Add(new SymbolToken("{"));
        }
        
        if (line.StartsWith("do"))
        {
            tokens.Add(new KeywordToken("do"));
            
            var identifier = line.Split(" ")[1].Split(".")[0];
            tokens.Add(new IdentifierToken(identifier));
            
            tokens.Add(new SymbolToken("."));
            
            var functionName = line.Split(" ")[1].Split(".")[1].Split("(")[0];
            tokens.Add(new IdentifierToken(functionName));
            tokens.Add(new SymbolToken("("));
            
            // TODO handle parameters
            
            tokens.Add(new SymbolToken(")"));
            tokens.Add(new SymbolToken(";"));
        }
        
        if (line.StartsWith("let"))
        {
            tokens.Add(new KeywordToken("let"));
            
            var identifierName = line.Split(" ")[1];
            tokens.Add(new IdentifierToken(identifierName));
            
            tokens.Add(new SymbolToken("="));
            
            var value = line.Split(" ")[3].Split(";")[0];
            tokens.Add(new IdentifierToken(value));
            
            tokens.Add(new SymbolToken(";"));
        }
        
        if (line.StartsWith("var") || line.StartsWith("static"))
        {
            tokens.Add(new KeywordToken(line.Split(" ")[0]));

            var identifierType = line.Split(" ")[1];
            if (IsKeyword(identifierType))
            {
                tokens.Add(new KeywordToken(identifierType));
            }
            else
            {
                tokens.Add(new IdentifierToken(identifierType));
            }

            var identifierName = line.Split(" ")[2].Split(";")[0];
            tokens.Add(new IdentifierToken(identifierName));
            
            tokens.Add(new SymbolToken(";"));
        }

        if (line.StartsWith("if"))
        {
            tokens.Add(new KeywordToken("if"));
            tokens.Add(new SymbolToken("("));
            
            var identifierName = line.Split("(")[1].Split(")")[0];
            tokens.Add(new IdentifierToken(identifierName));
            
            tokens.Add(new SymbolToken(")"));
            tokens.Add(new SymbolToken("{"));
        }

        if (line == "else {")
        {
            tokens.Add(new KeywordToken("else"));
            tokens.Add(new SymbolToken("{"));
        }
        
        if (line == "return;")
        {
            tokens.Add(new KeywordToken("return"));
            tokens.Add(new SymbolToken(";"));
        }
        
        if (line.StartsWith("}"))
        {
            tokens.Add(new SymbolToken("}"));
        }

        return tokens;
    }

    private IEnumerable<string> ParseFile(string filePath) =>
        File.ReadAllLines(filePath)
        .Where(line => !string.IsNullOrWhiteSpace(line))
        .Where(line => !line.Trim().StartsWith("//"))
        .Select(x => x.Split("//").First().Trim())
        .ToArray();

    private bool IsKeyword(string s)
    {
        return s is "class" or "constructor" or "function" or "method" or "field" or "static" or "var" or "int"
            or "char" or "boolean" or "void" or "true" or "false" or "null" or "this" or "let" or "do" or "if" or "else"
            or "while" or "return";
    }
}