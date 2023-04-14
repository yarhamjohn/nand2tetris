namespace VirtualMachineTranslator;

public class Parser
{
    private readonly string[] _input;

    public Parser(string[] input)
    {
        _input = input;
    }

    public List<ICommand> ParseCommands()
    {
        var commands = new List<ICommand>();
        foreach (var line in _input)
        {
            var chunks = line.Split(" ");
            var firstChunk = chunks.First();
            
            switch (firstChunk)
            {
                case "push":
                    commands.Add(new CPush(GetSegment(chunks[1]), Convert.ToInt32(chunks[2])));
                    break;
                case "pop":
                    commands.Add(new CPop(GetSegment(chunks[1]), Convert.ToInt32(chunks[2])));
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
            }
        }

        return commands;
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
            "temp" => "TEMP",
            _ => throw new Exception("Invalid segment")
        };
    }
}