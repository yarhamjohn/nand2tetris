namespace VirtualMachineTranslator3;

public class Parser
{
    private readonly string[] _paths;
    private readonly Dictionary<string, int> _functionCallCount = new();
    
    public Parser(string path)
    {
        _paths = File.Exists(path) ? new[] { path } : Directory.GetFiles(path, "*.vm");
    }

    public List<ICommand> Parse() => _paths.SelectMany(ParseFile).ToList();
    
    private List<ICommand> ParseFile(string filePath)
    {
        // Exclude blank lines, comments and whitespace
        var input = File.ReadAllLines(filePath)
            .Where(line => !string.IsNullOrWhiteSpace(line))
            .Where(line => line.Trim()[..2] != "//")
            .Select(x => x.Split("//").First().Trim())
            .ToArray();
    
        return ParseCommands(input, Path.GetFileNameWithoutExtension(filePath));
    }

    private List<ICommand> ParseCommands(string[] input, string fileName)
    {
        var commands = new List<ICommand>();

        var currentFunctionName = "";
        
        foreach (var line in input)
        {
            var chunks = line.Split(" ");
            var firstChunk = chunks.First();
            
            switch (firstChunk)
            {
                case "push":
                    commands.Add(new CPush(fileName, GetSegment(chunks[1]), Convert.ToInt32(chunks[2])));
                    break;
                case "pop":
                    commands.Add(new CPop(fileName, GetSegment(chunks[1]), Convert.ToInt32(chunks[2])));
                    break;
                case "add":
                    commands.Add(new CAdd());
                    break;
                case "sub":
                    commands.Add(new CSub());
                    break;
                case "eq":
                    commands.Add(new CEq());
                    break;
                case "lt":
                    commands.Add(new CLt());
                    break;
                case "gt":
                    commands.Add(new CGt());
                    break;
                case "neg":
                    commands.Add(new CNeg());
                    break;
                case "and":
                    commands.Add(new CAnd());
                    break;
                case "or":
                    commands.Add(new COr());
                    break;
                case "not":
                    commands.Add(new CNot());
                    break;
                case "label":
                    commands.Add(new CLabel(currentFunctionName, chunks[1]));
                    break;
                case "if-goto":
                    commands.Add(new CIfGoto(currentFunctionName,chunks[1]));
                    break;
                case "goto":
                    commands.Add(new CGoto(currentFunctionName, chunks[1]));
                    break;
                case "function":
                    currentFunctionName = chunks[1];
                    commands.Add(new CFunction(currentFunctionName, Convert.ToInt32(chunks[2])));
                    break;
                case "return":
                    commands.Add(new CReturn());
                    break;
                case "call":
                    var functionName = chunks[1];
                    IncrementCallCount(functionName);
                    
                    commands.Add(new CCall(functionName, Convert.ToInt32(chunks[2]), _functionCallCount[functionName]));
                    break;
                default:
                    throw new ArgumentOutOfRangeException(firstChunk);
            }
        }

        return commands;
    }

    private void IncrementCallCount(string functionName)
    {
        if (_functionCallCount.ContainsKey(functionName))
        {
            _functionCallCount[functionName]++;
        }
        else
        {
            _functionCallCount[functionName] = 0;
        }
    }

    private static string GetSegment(string target)
    {
        return target switch
        {
            "local" => "LCL",
            "argument" => "ARG",
            "this" => "THIS",
            "that" => "THAT",
            "constant" => "constant",
            "static" => "static",
            "pointer" => "pointer",
            "temp" => "temp",
            _ => throw new Exception("Invalid segment")
        };
    }
}