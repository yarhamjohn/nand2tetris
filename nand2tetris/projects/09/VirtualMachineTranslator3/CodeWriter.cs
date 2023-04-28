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
        }
        
        result.AddRange(InfiniteLoop());

        return result;
    }

    private List<string> Bootstrap()
    {
        var bootstrap = new List<string>
        {
            // Initialise SP
            "  @256",
            "  D=A",
            "  @SP",
            "  M=D"
        };

        var sysCall = new CCall("Sys.init", 0, 0);
        bootstrap.AddRange(sysCall.Translate(0).ToList());

        bootstrap.AddRange(FunctionReturn());

        return bootstrap;
    }

    private static IEnumerable<string> InfiniteLoop() =>
        new List<string>
        {
            // infinite loop
            "(END)",
            "  @END",
            "  0;JMP"
        };

    private static IEnumerable<string> FunctionReturn() =>
        new List<string>
        {
            // function return
            "(FUNCTION_RETURN)",

            // Store the start of the local stack (i.e. 'frame') in a temp variable
            "  @LCL",
            "  D=M",
            "  @R13",
            "  M=D",
            
            // Store the return address in a temp variable
            "  @5",
            "  A=D-A",
            "  D=M",
            "  @R14",
            "  M=D",
            
            // Store the return value in the first argument (i.e. top of caller stack)
            "  @SP",
            "  AM=M-1",
            "  D=M",
            "  @ARG",
            "  A=M",
            "  M=D",
            
            // Restore the caller's stack pointer (one after the return value)
            "  @ARG",
            "  D=M+1",
            "  @SP",
            "  M=D",
            
            // Restore the caller's THAT segment
            "  @R13",
            "  AM=M-1",
            "  D=M",
            "  @THAT",
            "  M=D",
            
            // Restore the caller's THIS segment
            "  @R13",
            "  AM=D-1",
            "  D=M",
            "  @THIS",
            "  M=D",
            
            // Restore the caller's ARG segment
            "  @R13",
            "  AM=D-1",
            "  D=M",
            "  @ARG",
            "  M=D",
            
            // Restore the caller's LCL segment
            "  @R13",
            "  AM=D-1",
            "  D=M",
            "  @LCL",
            "  M=D",
            
            // Jump to the return address
            "  @R14",
            "  A=M",
            "  0;JMP"
        };
}
