using System.Collections;
using SyntaxAnalyzer;

namespace SyntaxAnalyzerTests;

public class CompilationEngineTests
{
    private static IEnumerable DoStatementCalls()
    {
        var subRoutineCallingSubRoutine = new IToken[]
        {
            new KeywordToken("do"),
            new IdentifierToken("subroutineName"),
            new SymbolToken("("),
            new SymbolToken(")"),
            new SymbolToken(";")
        };

        var subRoutineCallingClassOrVar = new IToken[]
        {
            new KeywordToken("do"),
            new IdentifierToken("className"),
            new SymbolToken("."),
            new IdentifierToken("subroutineName"),
            new SymbolToken("("),
            new SymbolToken(")"),
            new SymbolToken(";")
        };
        
        yield return new TestCaseData(subRoutineCallingSubRoutine, 0, new[]
        {
            "<doStatement>",
            "  <keyword> do </keyword>",
            "  <identifier> subroutineName </identifier>",
            "  <symbol> ( </symbol>",
            "  <symbol> ) </symbol>",
            "  <symbol> ; </symbol>",
            "</doStatement>"
        });
        
        yield return new TestCaseData(subRoutineCallingSubRoutine, 1, new[]
        {
            "  <doStatement>",
            "    <keyword> do </keyword>",
            "    <identifier> subroutineName </identifier>",
            "    <symbol> ( </symbol>",
            "    <symbol> ) </symbol>",
            "    <symbol> ; </symbol>",
            "  </doStatement>"
        });
        
        yield return new TestCaseData(subRoutineCallingClassOrVar, 0, new[]
        {
            "<doStatement>",
            "  <keyword> do </keyword>",
            "  <identifier> className </identifier>",
            "  <symbol> . </symbol>",
            "  <identifier> subroutineName </identifier>",
            "  <symbol> ( </symbol>",
            "  <symbol> ) </symbol>",
            "  <symbol> ; </symbol>",
            "</doStatement>"
        });
        
        yield return new TestCaseData(subRoutineCallingClassOrVar, 1, new[]
        {
            "  <doStatement>",
            "    <keyword> do </keyword>",
            "    <identifier> className </identifier>",
            "    <symbol> . </symbol>",
            "    <identifier> subroutineName </identifier>",
            "    <symbol> ( </symbol>",
            "    <symbol> ) </symbol>",
            "    <symbol> ; </symbol>",
            "  </doStatement>"
        });
    }
    
    [TestCaseSource(nameof(DoStatementCalls))]
    public void DoStatementIsCorrect_WithoutExpressions(IToken[] tokens, int indent, string[] expected)
    {
        var engine = new Test();

        var result = engine.CompileDoStatement(tokens, indent);

        Assert.That(result, Is.EqualTo(expected));
    }
    
    private static IEnumerable ReturnStatementCalls()
    {
        var returnStatementTokens = new IToken[] { new KeywordToken("return"), new SymbolToken(";") };
        
        yield return new TestCaseData(returnStatementTokens, 0, new[]
        {
            "<returnStatement>",
            "  <keyword> return </keyword>",
            "  <symbol> ; </symbol>",
            "</returnStatement>"
        });
        
        yield return new TestCaseData(returnStatementTokens, 1, new[]
        {
            "  <returnStatement>",
            "    <keyword> return </keyword>",
            "    <symbol> ; </symbol>",
            "  </returnStatement>"
        });
    }
    
    [TestCaseSource(nameof(ReturnStatementCalls))]
    public void ReturnStatementIsCorrect_WithoutExpressions(IToken[] tokens, int indent, string[] expected)
    {
        var engine = new Test();

        var result = engine.CompileReturnStatement(tokens, indent);

        Assert.That(result, Is.EqualTo(expected));
    }

    [TestCase(";", 0, "<symbol> ; </symbol>")]
    [TestCase("(", 1, "  <symbol> ( </symbol>")]
    [TestCase(",", 2, "    <symbol> , </symbol>")]
    public void CompileSymbol_Is_Correct(string symbol, int indent, string expected)
    {
        var engine = new Test();

        var result = engine.CompileSymbol(new SymbolToken(symbol), indent);

        Assert.That(result, Is.EqualTo(expected));
    }

    [TestCase("varName", 0, "<identifier> varName </identifier>")]
    [TestCase("className", 1, "  <identifier> className </identifier>")]
    [TestCase("subroutineName", 2, "    <identifier> subroutineName </identifier>")]
    public void CompileIdentifier_Is_Correct(string identifier, int indent, string expected)
    {
        var engine = new Test();

        var result = engine.CompileIdentifier(new IdentifierToken(identifier), indent);

        Assert.That(result, Is.EqualTo(expected));
    }

    [TestCase("class", 0, "<keyword> class </keyword>")]
    [TestCase("function", 1, "  <keyword> function </keyword>")]
    [TestCase("static", 2, "    <keyword> static </keyword>")]
    public void CompileKeyword_Is_Correct(string keyword, int indent, string expected)
    {
        var engine = new Test();

        var result = engine.CompileKeyword(new KeywordToken(keyword), indent);

        Assert.That(result, Is.EqualTo(expected));
    }
}