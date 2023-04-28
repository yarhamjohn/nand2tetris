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
            // Provide the number of args
            $"  @{_numArgs}",
            "  D=A",
            "  @R13",
            "  M=D",
            
            // Provide the return address
            $"  @{_functionName}$ret.{_callNum}",
            "  D=A",
            "  @R14",
            "  M=D",
            
            // Provide the goto function address
            $"  @{_functionName}",
            "  D=A",
            "  @R15",
            "  M=D",
            
            // Jump to call function
            "  @CALL_FUNCTION",
            "  0;JMP",

            // create return address label
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
            // function {_functionName} {_numLocalVars}
            $"  ({_functionName})",
            "  @SP",
            "  A=M",
        };

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
            "  @SP",
            "  M=A"
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
            // return
            "  @FUNCTION_RETURN",
            "  0;JMP"
        };
    }
}

public class CLabel : ICommand
{
    private readonly string _label;

    public CLabel(string label)
    {
        _label = label;
    }

    public IEnumerable<string> Translate(int _)
    {
        return new List<string>
        {
            // label {_label}
            $"  ({_label})"
        };
    }
}

public class CIfGoto : ICommand
{
    private readonly string _label;

    public CIfGoto(string label)
    {
        _label = label;
    }

    public IEnumerable<string> Translate(int _)
    {
        return new List<string>
        {
            // if-goto {_label}
            "  @SP",
            "  AM=M-1",
            "  D=M",
            $"  @{_label}",
            "  D;JNE"
        };
    }
}

public class CGoto : ICommand
{
    private readonly string _label;

    public CGoto(string label)
    {
        _label = label;
    }

    public IEnumerable<string> Translate(int _)
    {
        return new List<string>
        {
            // goto {_label}
            $"  @{_label}",
            "  0;JMP"
        };
    }
}

public class CPush : ICommand
{
    private readonly string _target;
    private readonly int _value;
    private readonly string _fileName;

    public CPush(string target, int value, string fileName)
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
                // push {_target} {_value}
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
                // push {_target} {_value}
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
                // push {_target} {_value}
                $"  @{_fileName}.{_value}",
                "  D=M",
                "  @SP",
                "  A=M",
                "  M=D",
                "  @SP",
                "  M=M+1"
            },
            _ => new List<string>
            {
                // push {_target} {_value}
                $"  @{(_target == "TEMP" ? _value + 5 : _value)}",
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

    public CPop(string target, int value, string fileName)
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
                // pop {_target} {_value}
                "  @SP",
                "  AM=M-1",
                "  D=M",
                $"  @{(_value == 0 ? "THIS" : "THAT")}",
                "  M=D"
            },
            "static" => new List<string>
            {
                // pop {_target} {_value}
                "  @SP",
                "  AM=M-1",
                "  D=M",
                $"  @{_fileName}.{_value}",
                "  M=D"
            },
            _ =>
                new List<string>
                {
                    // pop {_target} {_value}
                    $"  @{(_target == "TEMP" ? _value + 5 : _value)}",
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
            // add
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
            // sub
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
            // eq
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
            // lt
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
            // gt
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
            // neg
            "  @SP",
            "  A=M-1",
            "  M=-M"
        };
}

public class CAnd : ICommand {
    public IEnumerable<string> Translate(int _) =>
        new List<string>
        {
            // and
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
            // or
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
            // not
            "  @SP",
            "  A=M-1",
            "  M=!M"
        };
 }