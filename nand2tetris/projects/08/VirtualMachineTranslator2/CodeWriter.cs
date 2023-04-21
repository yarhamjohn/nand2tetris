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
        var result = Bootstrap();
        for (var i = 0; i < _commands.Count; i++)
        {
            result.AddRange(_commands[i].Translate(i));
            result.Add("");
        }
        
        result.AddRange(InfiniteLoop());

        return result;
    }

    private List<string> Bootstrap()
    {
        var bootstrap = new List<string>
        {
            "// Initialise SP",
            "  @256",
            "  D=A",
            "  @SP",
            "  M=D",
        };

        var sysCall = new CCall("Sys.init", 0, 0);
        bootstrap.AddRange(sysCall.Translate(0).ToList());

        return bootstrap;
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
