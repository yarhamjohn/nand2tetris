﻿using System.Text;

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
            {",", ","}, {";", ";"}, {"+", "+"}, {"-", "-"}, {"*", "*"}, {"/", "/"}, {"&", "&amp;"},
            {"|", "|"}, {"<", "&lt;"}, {">", "&gt;"}, {"=", "="}, {"~", "~"}
        };

    public static IEnumerable<IToken> Tokenize(IEnumerable<string> lines)
    {
        var inMultiLineComment = false;
        var tokens = new List<IEnumerable<IToken>>();
        
        foreach (var line in lines.Select(l => l.Trim()))
        {
            // Start of multi-line comment
            if (line.StartsWith("/*"))
            {
                // Multi-line comment is single line
                if (line.EndsWith("*/"))
                {
                    continue;
                }

                inMultiLineComment = true;
                continue;
            }
            
            // single line comment
            if (line.StartsWith("//"))
            {
                continue;
            }
            
            // continuation of a multi line comment
            if (inMultiLineComment)
            {
                // end of multi line comment reached
                if (line.EndsWith("*/"))
                {
                    inMultiLineComment = false;
                }

                continue;
            }

            // Remove commented ends of lines
            tokens.Add(TokenizeLine(line.Split("//")[0].Trim()));
        }

        return tokens.SelectMany(x => x);
    }

    private static IEnumerable<IToken> TokenizeLine(string line)
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

            // The current letter is neither the end of the current word (whitespace)
            // nor a new symbol token, so should be added to the current word.
            if (!isWhiteSpace && !isSymbol)
            {
                currentWord.Append(currentLetter);

                // However, the current letter is the closing quote mark for the current word
                // so a string constant token should be created and the current word cleared.
                if (currentWord.Length > 1 && currentLetter == "\"")
                {
                    tokens.Add(new StringConstantToken(currentWord.ToString().Replace("\"", "")));
                    currentWord.Clear();
                }
            }
            
            // The current word is an unfinished string constant, so even if though the current letter is
            // either whitespace or a symbol, it should be added to the current word.
            else if (inStringConstant)
            {
                currentWord.Append(currentLetter);
            }
            
            // The current word is not an unfinished string constant and the current letter is whitespace or a symbol
            else
            {
                // If the current word is not empty, the current letter marks a new token, or whitespace,
                // so the current word should be converted into a token and the current word cleared.
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

                // Additionally, if the current letter is a symbol, it should be immediately converted into
                // a token rather than starting a new current word. If whitespace, it should be ignored.
                if (isSymbol)
                {
                    tokens.Add(new SymbolToken(Symbols[currentLetter]));
                }
            }

            currentPosition++;
        }

        return tokens;
    }
}