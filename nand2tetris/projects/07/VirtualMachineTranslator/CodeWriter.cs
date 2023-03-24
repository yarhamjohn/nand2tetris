namespace VirtualMachineTranslator;

public class CodeWriter
{
    private readonly IEnumerable<ICommand> _commands;

    public CodeWriter(IEnumerable<ICommand> commands)
    {
        _commands = commands;
    }

    public IEnumerable<string> Translate()
    {
        var result = new List<string>();
        foreach (var cmd in _commands)
        {
            if (cmd is CPush cPush)
            {
                result.AddRange(TranslateCPush(cPush));
            }

            if (cmd is CAdd)
            {
                result.AddRange(TranslateCAdd());
            }
        }
        
        result.AddRange(InfiniteLoop());

        return result;
    }

    private List<string> TranslateCPush(CPush cPush) =>
        new() 
        {
            "",
            $"// {cPush}",
            $"  @{cPush.Value}",
            "  D=A",
            "  @SP",
            "  A=M",
            "  M=D",
            "  @SP",
            "  M=M+1"
        };

    private List<string> TranslateCAdd() =>
        new ()
        {
            "",
            "// add",
            "  @SP",
            "  AM=M-1",
            "  D=M",
            "  A=A-1",
            "  M=M+D"
        };

    private List<string> InfiniteLoop() =>
        new ()
        {
            "",
            "// infinite loop",
            "(END)",
            "  @END",
            "  0;JMP"
        };
}
