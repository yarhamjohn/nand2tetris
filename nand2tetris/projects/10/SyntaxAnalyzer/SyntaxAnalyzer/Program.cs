using SyntaxAnalyzer;

string GetOutputPath(string filePath)
{
    // Part one - simplified compilation
    // return filePath.Replace(".jack", "T_gen.xml");
    
    // Part two - full compilation
    return filePath.Replace(".jack", "_gen.xml");
}

var path = args[0];

var filePaths = File.Exists(path) ? new[] { path } : Directory.GetFiles(path, "*.jack");

foreach (var file in filePaths)
{
    var tokens = Tokenizer.Tokenize(File.ReadAllLines(file));
    
    // Part one - simplified compilation
    // var output = new SimpleCompiler().Compile(tokens);
    
    // Part two - full compilation
    var output = new CompilationEngine().Compile(tokens.ToArray(), 0);

    File.WriteAllLines(GetOutputPath(file), output);
}
