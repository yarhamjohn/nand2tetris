namespace SyntaxAnalyzer;

public class SimpleCompiler
{
    public IEnumerable<string> Compile(IEnumerable<IToken> tokens)
    {
        var output = new List<string> {"<tokens>"};
        output.AddRange(tokens.Select(token =>
        {
            var tokenType = token.Type.ToString().ToLower();
            return "<" + tokenType + "> " + token.Value + " </" + tokenType + ">";
        }));
        output.Add("</tokens>");
        return output;
    }
}