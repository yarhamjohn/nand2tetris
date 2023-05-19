namespace SyntaxAnalyzer;

public interface IToken
{
    public TokenType Type { get; }
    public string Value { get; }
}

public record KeywordToken : IToken
{
    public TokenType Type => TokenType.Keyword;
    public string Value { get; }

    public KeywordToken(string value)
    {
        Value = value;
    }
}

public record SymbolToken : IToken
{
    public TokenType Type => TokenType.Symbol;
    public string Value { get; }

    public SymbolToken(string value)
    {
        Value = value;
    }
}

public record IdentifierToken : IToken
{
    public TokenType Type => TokenType.Identifier;
    public string Value { get; }

    public IdentifierToken(string value)
    {
        Value = value;
    }
}

public record StringConstantToken : IToken
{
    public TokenType Type => TokenType.StringConstant;
    public string Value { get; }

    public StringConstantToken(string value)
    {
        Value = value;
    }
}

public record IntegerConstantToken : IToken
{
    public TokenType Type => TokenType.IntegerConstant;
    public string Value { get; }

    public IntegerConstantToken(string value)
    {
        Value = value;
    }
}

public enum TokenType
{
    Keyword,
    Symbol,
    Identifier,
    IntegerConstant,
    StringConstant
}