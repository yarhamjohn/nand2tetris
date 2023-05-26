using System.Text.Json;

namespace SyntaxAnalyzer;

public class SimpleCompiler
{
    public IEnumerable<string> Compile(IEnumerable<IToken> tokens)
    {
        var output = new List<string> {"<tokens>"};
        output.AddRange(tokens.Select(token =>
        {
            var tokenType = JsonNamingPolicy.CamelCase.ConvertName(token.Type.ToString());
            return "<" + tokenType + "> " + token.Value + " </" + tokenType + ">";
        }));
        output.Add("</tokens>");
        return output;
    }
}