using System.Text;

namespace SyntaxAnalyzer;

public abstract class Tokenizer
{
    private static List<string> Keywords => new()
    {
        "class", "constructor", "function", "method", "field", "static", "var", "int", "char", "boolean",
        "void", "true", "false", "null", "this", "let", "do", "if", "else", "while", "return"
    };

    private static List<string> Symbols => new()
        { "{", "}", "(", ")", "[", "]", ".", ",", ";", "+", "-", "*", "/", "&", "|", "<", ">", "=", "~" };

    public static IEnumerable<IToken> Tokenize(string filePath) => CleanFile(filePath).SelectMany(TokenizeLines);

    private static IEnumerable<IToken> TokenizeLines(string line)
    {
        var tokens = new List<IToken>();

        var currentPosition = 0;
        var currentWord = new StringBuilder();

        while (currentPosition < line.Length)
        {
            var currentLetter = line[currentPosition].ToString();

            var isSymbol = Symbols.Contains(currentLetter);
            var isWhiteSpace = currentLetter == " ";

            if (!isWhiteSpace && !isSymbol)
            {
                currentWord.Append(currentLetter);
            }
            else
            {
                if (currentWord.Length > 0)
                {
                    var word = currentWord.ToString();
                    if (Keywords.Contains(word))
                    {
                        tokens.Add(new KeywordToken(word));
                    }
                    else
                    {
                        tokens.Add(new IdentifierToken(word));
                    }

                    currentWord.Clear();
                }

                if (isSymbol)
                {
                    tokens.Add(new SymbolToken(currentLetter));
                }
            }

            currentPosition++;
        }

        return tokens;
    }

    private static IEnumerable<string> CleanFile(string filePath) =>
        File.ReadAllLines(filePath)
            .Where(line => !string.IsNullOrWhiteSpace(line))
            .Where(line => !line.Trim().StartsWith("//"))
            .Where(line => !line.Trim().StartsWith("/*"))
            .Select(x => x.Split("//").First().Trim());
}