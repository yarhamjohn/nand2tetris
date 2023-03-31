namespace VirtualMachineTranslator;

public interface ICommand {
    public IEnumerable<string> Translate(int index);
 }

public class CPush : ICommand
{
    private readonly string _target;
    private readonly int _value;

    public CPush(string target, int value)
    {
        _target = target;
        _value = value;
    }
    
    public IEnumerable<string> Translate(int _) =>
        new List<string>
        {
            $"// push {_target} {_value}",
            $"  @{_value}",
            "  D=A",
            "  @SP",
            "  A=M",
            "  M=D",
            "  @SP",
            "  M=M+1"
        };
}

public class CAdd : ICommand {
    public IEnumerable<string> Translate(int _) =>
        new List<string>
        {
            "// add",
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
            "// sub",
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
            "// eq",
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
            "// lt",
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
            "// gt",
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
    public IEnumerable<string> Translate(int index) =>
        new List<string>
        {
            "// neg",
            "  @SP",
            "  A=M-1",
            "  M=-M"
        };
}

public class CAnd : ICommand {
    public IEnumerable<string> Translate(int index) =>
        new List<string>
        {
            "// and",
            "  @SP",
            "  AM=M-1",
            "  D=M",
            "  A=A-1",
            "  M=M&D"
        };
 }

public class COr : ICommand {
    public IEnumerable<string> Translate(int index) =>
        new List<string>
        {
            "// or",
            "  @SP",
            "  AM=M-1",
            "  D=M",
            "  A=A-1",
            "  M=M|D"
        };
 }

public class CNot : ICommand {
    public IEnumerable<string> Translate(int index) =>
        new List<string>
        {
            "// not",
            "  @SP",
            "  A=M-1",
            "  M=!M"
        };
 }