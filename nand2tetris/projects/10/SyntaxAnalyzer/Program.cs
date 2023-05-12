using SyntaxAnalyzer;

string GetOutputPath(string filePath)
{
    return filePath.Replace(".jack", "T_gen.xml");
}

var path = args[0];

var filePaths = File.Exists(path) ? new[] { path } : Directory.GetFiles(path, "*.jack");

foreach (var file in filePaths)
{
    var tokens = Tokenizer.Tokenize(file);
    var output = new SimpleCompiler().Compile(tokens);

    File.WriteAllLines(GetOutputPath(file), output);
}
