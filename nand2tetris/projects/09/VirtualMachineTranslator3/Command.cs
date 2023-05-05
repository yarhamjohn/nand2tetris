namespace VirtualMachineTranslator2;

public interface ICommand {
    public IEnumerable<string> Translate(int index);
}

public class CCall : ICommand
{
    private readonly string _functionName;
    private readonly int _numArgs;
    private readonly int _callNum;

    public CCall(string functionName, int numArgs, int callNum)
    {
        _functionName = functionName;
        _numArgs = numArgs;
        _callNum = callNum;
    }

    public IEnumerable<string> Translate(int _)
    {
        var result = new List<string>
        {
            // Stash the number of args for the function being called
            $"  @{_numArgs}",
            "  D=A",
            "  @R13",
            "  M=D",
            
            // Stash the return address of the function being called
            $"  @{_functionName}$ret.{_callNum}",
            "  D=A",
            "  @R14",
            "  M=D",
            
            // Stash the address of the function being called
            $"  @{_functionName}",
            "  D=A",
            "  @R15",
            "  M=D",
            
            // Jump to generic call function
            "  @CALL_FUNCTION",
            "  0;JMP",

            // create return address label for function being called
            $"({_functionName}$ret.{_callNum})"
        };

        return result;
    }
}

public class CFunction : ICommand
{
    private readonly string _functionName;
    private readonly int _numLocalVars;

    public CFunction(string functionName, int numLocalVars)
    {
        _functionName = functionName;
        _numLocalVars = numLocalVars;
    }

    public IEnumerable<string> Translate(int _)
    {
        var result = new List<string>
        {
            $"  ({_functionName})"
        };

        if (_numLocalVars == 0)
        {
            return result;
        }
        
        result.AddRange(new List<string>
        {
            "  @SP",
            "  A=M"
        });

        for (var i = 0; i < _numLocalVars; i++)
        {
            // For each argument, push 0 onto the stack
            result.AddRange(new List<string>
            {
                "  M=0",
                "  A=A+1"
            });
        }

        result.AddRange(new List<string>
        {
            // Ensure the SP now points to the next space
            "  D=A",
            "  @SP",
            "  M=D"
        });

        return result;
    }
}

public class CReturn : ICommand
{
    public IEnumerable<string> Translate(int _)
    {
        return new List<string>
        {
            "  @FUNCTION_RETURN",
            "  0;JMP"
        };
    }
}

public class CLabel : ICommand
{
    private readonly string _functionName;
    private readonly string _label;

    public CLabel(string functionName, string label)
    {
        _functionName = functionName;
        _label = label;
    }

    public IEnumerable<string> Translate(int _)
    {
        return new List<string>
        {
            $"  ({_functionName}${_label})"
        };
    }
}

public class CIfGoto : ICommand
{
    private readonly string _functionName;
    private readonly string _label;

    public CIfGoto(string functionName, string label)
    {
        _functionName = functionName;
        _label = label;
    }

    public IEnumerable<string> Translate(int _)
    {
        return new List<string>
        {
            "  @SP",
            "  AM=M-1",
            "  D=M",
            $"  @{_functionName}${_label}",
            "  D;JNE"
        };
    }
}

public class CGoto : ICommand
{
    private readonly string _functionName;
    private readonly string _label;

    public CGoto(string functionName, string label)
    {
        _functionName = functionName;
        _label = label;
    }

    public IEnumerable<string> Translate(int _)
    {
        return new List<string>
        {
            $"  @{_functionName}${_label}",
            "  0;JMP"
        };
    }
}

public class CPush : ICommand
{
    private readonly string _target;
    private readonly int _value;
    private readonly string _fileName;

    public CPush(string fileName, string target, int value)
    {
        _target = target;
        _value = value;
        _fileName = fileName;
    }
    
    public IEnumerable<string> Translate(int _) =>
        _target switch
        {
            "constant" => new List<string>
            {
                $"  @{_value}",
                "  D=A",
                "  @SP",
                "  A=M",
                "  M=D",
                "  @SP",
                "  M=M+1"
            },
            "pointer" => new List<string>
            {
                $"  @{(_value == 0 ? "THIS" : "THAT")}",
                "  D=M",
                "  @SP",
                "  A=M",
                "  M=D",
                "  @SP",
                "  M=M+1"
            },
            "static" => new List<string>
            {
                $"  @{_fileName}.{_value}",
                "  D=M",
                "  @SP",
                "  A=M",
                "  M=D",
                "  @SP",
                "  M=M+1"
            },
            "temp" => new List<string>
            {
                $"  @{_value + 5}",
                "  D=M",
                "  @SP",
                "  A=M",
                "  M=D",
                "  @SP",
                "  M=M+1"
            },
            _ => new List<string>
            {
                $"  @{_value}",
                "  D=A",
                $"  @{_target}",
                "  A=M+D",
                "  D=M",
                "  @SP",
                "  A=M",
                "  M=D",
                "  @SP",
                "  M=M+1"
            }
        };
}

public class CPop : ICommand
{
    private readonly string _target;
    private readonly int _value;
    private readonly string _fileName;

    public CPop(string fileName, string target, int value)
    {
        _target = target;
        _value = value;
        _fileName = fileName;
    }

    public IEnumerable<string> Translate(int _) =>
        _target switch
        {
            "pointer" => new List<string>
            {
                "  @SP",
                "  AM=M-1",
                "  D=M",
                $"  @{(_value == 0 ? "THIS" : "THAT")}",
                "  M=D"
            },
            "static" => new List<string>
            {
                "  @SP",
                "  AM=M-1",
                "  D=M",
                $"  @{_fileName}.{_value}",
                "  M=D"
            },
            "temp" => new List<string>
            {
                "  @SP",
                "  AM=M-1",
                "  D=M",
                $"  @{_value + 5}",
                "  M=D"
            },
            _ =>
                new List<string>
                {
                    // _target contains a pointer to the start of the segment
                    $"  @{_value}",
                    "  D=A",
                    $"  @{_target}",
                    "  D=M+D",
                    "  @R13",
                    "  M=D",
                    "  @SP",
                    "  AM=M-1",
                    "  D=M",
                    "  @R13",
                    "  A=M",
                    "  M=D"
                }
        };
}

public class CAdd : ICommand {
    public IEnumerable<string> Translate(int _) =>
        new List<string>
        {
            "  @SP",
            "  AM=M-1",
            "  D=M",
            "  A=A-1",
            "  M=M+D"
        };
 }

public class CSub : ICommand {
    public IEnumerable<string> Translate(int _) =>
        new List<string>
        {
            "  @SP",
            "  AM=M-1",
            "  D=M",
            "  A=A-1",
            "  M=M-D"
        };
 }

public class CEq : ICommand {
    public IEnumerable<string> Translate(int index) =>
        new List<string>
        {
            "  @SP",
            "  AM=M-1",
            "  D=M",
            "  A=A-1",
            "  D=M-D",
            
            $"  @TRUE{index}",
            "  D;JEQ",
            
            "  @SP",
            "  A=M-1",
            "  M=0",
            $"  @CONTINUE{index}",
            "  0;JMP",
            
            $"(TRUE{index})",
            "  @SP",
            "  A=M-1",
            "  M=-1",
    
            $"(CONTINUE{index})"
        };
 }

public class CLt : ICommand {
    public IEnumerable<string> Translate(int index) =>
        new List<string>
        {
            "  @SP",
            "  AM=M-1",
            "  D=M",
            "  A=A-1",
            "  D=M-D",
            
            $"  @TRUE{index}",
            "  D;JLT",
            
            "  @SP",
            "  A=M-1",
            "  M=0",
            $"  @CONTINUE{index}",
            "  0;JMP",
            
            $"(TRUE{index})",
            "  @SP",
            "  A=M-1",
            "  M=-1",
            
            $"(CONTINUE{index})"
        };
 }

public class CGt : ICommand {
    public IEnumerable<string> Translate(int index) =>
        new List<string>
        {
            "  @SP",
            "  AM=M-1",
            "  D=M",
            "  A=A-1",
            "  D=M-D",
            
            $"  @TRUE{index}",
            "  D;JGT",
            
            "  @SP",
            "  A=M-1",
            "  M=0",
            $"  @CONTINUE{index}",
            "  0;JMP",
            
            $"(TRUE{index})",
            "  @SP",
            "  A=M-1",
            "  M=-1",
            
            $"(CONTINUE{index})"
        };
 }

public class CNeg : ICommand {
    public IEnumerable<string> Translate(int _) =>
        new List<string>
        {
            "  @SP",
            "  A=M-1",
            "  M=-M"
        };
}

public class CAnd : ICommand {
    public IEnumerable<string> Translate(int _) =>
        new List<string>
        {
            "  @SP",
            "  AM=M-1",
            "  D=M",
            "  A=A-1",
            "  M=M&D"
        };
 }

public class COr : ICommand {
    public IEnumerable<string> Translate(int _) =>
        new List<string>
        {
            "  @SP",
            "  AM=M-1",
            "  D=M",
            "  A=A-1",
            "  M=M|D"
        };
 }

public class CNot : ICommand {
    public IEnumerable<string> Translate(int _) =>
        new List<string>
        {
            "  @SP",
            "  A=M-1",
            "  M=!M"
        };
 }