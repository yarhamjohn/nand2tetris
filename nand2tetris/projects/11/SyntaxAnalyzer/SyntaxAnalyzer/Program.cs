using SyntaxAnalyzer;

string GetOutputPath(string filePath)
{
    // Part one - simplified xml compilation
    // return filePath.Replace(".jack", "T_gen.xml");
    
    // Part two - full xml compilation
    // return filePath.Replace(".jack", "_gen.xml");
    
    // Part three - vm compilation
    return filePath.Replace(".jack", ".vm");
}

var path = args[0];

var filePaths = File.Exists(path) ? new[] { path } : Directory.GetFiles(path, "*.jack");

foreach (var file in filePaths)
{
    var tokens = Tokenizer.Tokenize(File.ReadAllLines(file));
    
    // Part one - simplified xml compilation
    // var output = new SimpleCompiler().Compile(tokens);
    
    // Part two - full xml compilation
    // var compilationEngine = new CompilationEngine(tokens);
    // compilationEngine.Compile();

    // Part three - vm compilation
    var compilationEngine = new CompilationEngine(tokens);
    compilationEngine.Compile();
    
    File.WriteAllLines(GetOutputPath(file), compilationEngine.Compilation);
}
