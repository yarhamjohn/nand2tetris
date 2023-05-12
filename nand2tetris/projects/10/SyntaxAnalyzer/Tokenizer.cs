using System.Text;

namespace SyntaxAnalyzer;

public abstract class Tokenizer
{
    private static List<string> Keywords => new()
    {
        "class", "constructor", "function", "method", "field", "static", "var", "int", "char", "boolean",
        "void", "true", "false", "null", "this", "let", "do", "if", "else", "while", "return"
    };

    private static Dictionary<string, string> Symbols => new()
        {
            {"{", "{"}, {"}", "}"}, {"(", "("}, {")", ")"}, {"[", "["}, {"]", "]"}, {".", "."},
            {",", ","}, {";", ";"}, {"+", "+"}, {"-", "-"}, {"*", "*"}, {"/", "/"}, {"&", "&amp"},
            {"|", "|"}, {"<", "&lt;"}, {">", "&gt;"}, {"=", "="}, {"~", "~"}
        };

    public static IEnumerable<IToken> Tokenize(string filePath) => CleanFile(filePath).SelectMany(TokenizeLines);

    private static IEnumerable<IToken> TokenizeLines(string line)
    {
        var tokens = new List<IToken>();

        var currentPosition = 0;
        var currentWord = new StringBuilder();

        while (currentPosition < line.Length)
        {
            var currentLetter = line[currentPosition].ToString();

            var isSymbol = Symbols.ContainsKey(currentLetter);
            var isWhiteSpace = currentLetter == " ";
            var inStringConstant = currentWord.Length > 0 && currentWord.ToString().First() == '"';

            if (!isWhiteSpace && !isSymbol)
            {
                currentWord.Append(currentLetter);

                var isClosingQuoteMark = currentWord.Length > 1 && currentLetter == "\"";
                if (isClosingQuoteMark)
                {
                    tokens.Add(new StringConstantToken(currentWord.ToString().Replace("\"", "")));
                    currentWord.Clear();
                }
            }
            else if (inStringConstant)
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
                    else if (int.TryParse(word, out _))
                    {
                        tokens.Add(new IntegerConstantToken(word));
                    }
                    else
                    {
                        tokens.Add(new IdentifierToken(word));
                    }

                    currentWord.Clear();
                }

                if (isSymbol)
                {
                    tokens.Add(new SymbolToken(Symbols[currentLetter]));
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