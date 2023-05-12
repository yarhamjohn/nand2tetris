namespace SyntaxAnalyzer;

public interface IToken
{
    public TokenType Type { get; }
    public string Value { get; }
}

public class KeywordToken : IToken
{
    public TokenType Type => TokenType.Keyword;
    public string Value { get; }

    public KeywordToken(string value)
    {
        Value = value;
    }
}

public class SymbolToken : IToken
{
    public TokenType Type => TokenType.Symbol;
    public string Value { get; }

    public SymbolToken(string value)
    {
        Value = value;
    }
}

public class IdentifierToken : IToken
{
    public TokenType Type => TokenType.Identifier;
    public string Value { get; }

    public IdentifierToken(string value)
    {
        Value = value;
    }
}

public enum TokenType
{
    Keyword,
    Symbol,
    Identifier,
    IntConst,
    StringConst
}