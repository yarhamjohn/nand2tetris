using SyntaxAnalyzer;

namespace SyntaxAnalyzerTests;

public class Tests
{
    [Test]
    public void Tokenize_ignores_empty_lines()
    {
        var input = new[] { "", "         ", "  " };

        var tokens = Tokenizer.Tokenize(input);

        Assert.That(tokens, Is.Empty);
    }
    
    [Test]
    public void Tokenize_ignores_whitespace()
    {
        var input = new[] { " return;   "};

        var tokens = Tokenizer.Tokenize(input);

        Assert.That(tokens, Is.EquivalentTo(new IToken[] { new KeywordToken("return"), new SymbolToken(";") }));
    }

    [Test]
    public void Tokenize_ignores_whole_commented_line()
    {
        var input = new[] { "//", "// class", "//", "// class", "// class // class" };

        var tokens = Tokenizer.Tokenize(input);

        Assert.That(tokens, Is.Empty);
    }
    
    [Test]
    public void Tokenize_ignores_whole_commented_line_multi_format()
    {
        var input = new[] { "/* class */" };

        var tokens = Tokenizer.Tokenize(input);

        Assert.That(tokens, Is.Empty);
    }
    
    [Test]
    public void Tokenize_ignores_whole_commented_line_multi_api_format()
    {
        var input = new[] { "/** class */" };

        var tokens = Tokenizer.Tokenize(input);

        Assert.That(tokens, Is.Empty);
    }

    [TestCase("return; //")]
    [TestCase("return; // return;")]
    [TestCase("return; // return; // return;")]
    public void Tokenize_ignores_rest_of_commented_line(string input)
    {
        var tokens = Tokenizer.Tokenize(new[] {input});

        Assert.That(tokens, Is.EquivalentTo(new IToken[] { new KeywordToken("return"), new SymbolToken(";") }));
    }
    
    [TestCase("/* return;", "return; */", "return;")]
    [TestCase("return;", "/* return;", "return; */")]
    [TestCase("/* return;", "return; */", "return;", "/* return;", "return; */")]
    public void Tokenize_ignores_contents_of_multi_line_format_comment(params string[] input)
    {
        var tokens = Tokenizer.Tokenize(input);

        Assert.That(tokens, Is.EquivalentTo(new IToken[] { new KeywordToken("return"), new SymbolToken(";") }));
    }
    
    [TestCase("/** return;", "return; */", "return;")]
    [TestCase("return;", "/** return;", "return; */")]
    [TestCase("/** return;", "return; */", "return;", "/** return;", "return; */")]
    public void Tokenize_ignores_contents_of_multi_line_api_format_comment(params string[] input)
    {
        var tokens = Tokenizer.Tokenize(input);

        Assert.That(tokens, Is.EquivalentTo(new IToken[] { new KeywordToken("return"), new SymbolToken(";") }));
    }
}