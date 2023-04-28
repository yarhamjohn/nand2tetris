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

        bootstrap.AddRange(FunctionCall());
        bootstrap.AddRange(FunctionReturn());
        
        var sysCall = new CCall("Sys.init", 0, 0);
        bootstrap.AddRange(sysCall.Translate(0).ToList());

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

    private static IEnumerable<string> FunctionCall() =>
        new List<string>
        {
            // call {_functionName} {_numArgs}
            "(CALL_FUNCTION)",

            // The goto function address is stored in D so move to @R15 
            "  @R15",
            "  M=D",
            
            // push return address onto stack
            "  @R14",
            "  D=M",
            "  @SP",
            "  A=M",
            "  M=D",

            // store the pointer to the caller's LCL to the stack
            "  @LCL",
            "  D=M",
            "  @SP",
            "  AM=M+1",
            "  M=D",

            // store the pointer to the caller's ARG to the stack
            "  @ARG",
            "  D=M",
            "  @SP",
            "  AM=M+1",
            "  M=D",

            // store the pointer to the caller's THIS to the stack
            "  @THIS",
            "  D=M",
            "  @SP",
            "  AM=M+1",
            "  M=D",

            // store the pointer to the caller's THAT to the stack
            "  @THAT",
            "  D=M",
            "  @SP",
            "  AM=M+1",
            "  M=D",

            // set the callee ARG to point at the first arg passed to the function
            "  @SP",
            "  D=M",
            "  @5",
            "  D=D-A",
            "  @R13",
            "  D=D-M",
            "  @ARG",
            "  M=D",

            // set the callee LCL point at the top of the stack
            "  @SP",
            "  D=M",
            "  @LCL",
            "  M=D",

            // Jump back to call function
            "  @R15",
            "  A=M",
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
            "  @FRAME_START",
            "  M=D",
            
            // Store the return address in a temp variable
            "  @5",
            "  A=D-A",
            "  D=M",
            "  @RETURN_ADDRESS",
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
            "  @FRAME_START",
            "  AM=M-1",
            "  D=M",
            "  @THAT",
            "  M=D",
            
            // Restore the caller's THIS segment
            "  @FRAME_START",
            "  AM=D-1",
            "  D=M",
            "  @THIS",
            "  M=D",
            
            // Restore the caller's ARG segment
            "  @FRAME_START",
            "  AM=D-1",
            "  D=M",
            "  @ARG",
            "  M=D",
            
            // Restore the caller's LCL segment
            "  @FRAME_START",
            "  AM=D-1",
            "  D=M",
            "  @LCL",
            "  M=D",
            
            // Jump to the return address
            "  @RETURN_ADDRESS",
            "  A=M",
            "  0;JMP"
        };
}
