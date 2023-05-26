namespace SyntaxAnalyzer;

public interface IToken
{
    public TokenType Type { get; }
    public string Value { get; }
}

public record KeywordToken(string Value) : IToken
{
    public TokenType Type => TokenType.Keyword;

    public override string ToString()
    {
        return $"<keyword> {Value} </keyword>";
    }
}

public record SymbolToken(string Value) : IToken
{
    public TokenType Type => TokenType.Symbol;

    public override string ToString()
    {
        return $"<symbol> {Value} </symbol>";
    }
}

public record IdentifierToken(string Value) : IToken
{
    public TokenType Type => TokenType.Identifier;
    
    public override string ToString()
    {
        return $"<identifier> {Value} </identifier>";
    }
}

public record StringConstantToken(string Value) : IToken
{
    public TokenType Type => TokenType.StringConstant;
    
    public override string ToString()
    {
        return $"<stringConstant> {Value} </stringConstant>";
    }
}

public record IntegerConstantToken(string Value) : IToken
{
    public TokenType Type => TokenType.IntegerConstant;
    
    public override string ToString()
    {
        return $"<integerConstant> {Value} </integerConstant>";
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