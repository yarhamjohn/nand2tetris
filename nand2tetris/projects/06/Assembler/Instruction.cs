namespace Assembler;

public interface IInstruction { }

public class AInstruction : IInstruction
{
    public readonly int Value;
    
    public AInstruction(int aRegisterValue)
    {
        Value = aRegisterValue;
    }
}

public class CInstruction : IInstruction
{
    public readonly string? Dest;
    public readonly string Comp;
    public readonly string? Jump;
    
    public CInstruction(string instruction)
    {
        string workingComp;
        if (instruction.Contains('='))
        {
            Dest = instruction.Split("=").First().Trim();
            workingComp = instruction.Split("=").Last().Trim();
        }
        else
        {
            workingComp = instruction;
        }

        if (instruction.Contains(';'))
        {
            Jump = instruction.Split(";").Last().Trim();
            workingComp = workingComp.Split(";").First().Trim();
        }

        Comp = workingComp;
    }
}