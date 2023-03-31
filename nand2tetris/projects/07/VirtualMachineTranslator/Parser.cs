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
                    commands.Add(new CPush(chunks[1], Convert.ToInt32(chunks[2])));
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
}