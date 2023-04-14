namespace VirtualMachineTranslator2;

public class CodeWriter
{
    private readonly List<ICommand> _commands;

    public CodeWriter(List<ICommand> commands)
    {
        _commands = commands;
    }

    public IEnumerable<string> Translate()
    {
        var result = new List<string>();
        for (var i = 0; i < _commands.Count; i++)
        {
            result.AddRange(_commands[i].Translate(i));
            result.Add("");
        }
        
        result.AddRange(InfiniteLoop());

        return result;
    }

    private static IEnumerable<string> InfiniteLoop() =>
        new List<string>
        {
            "// infinite loop",
            "(END)",
            "  @END",
            "  0;JMP"
        };
}
