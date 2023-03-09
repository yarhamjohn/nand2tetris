namespace Assembler;

public class Parser
{
    private readonly SymbolTable _symbolTable;
    private readonly string[] _input;

    public Parser(string[] input, SymbolTable symbolTable)
    {
        _symbolTable = symbolTable;
        _input = input;
    }

    public void FirstPass()
    {
        var counter = 0;
        foreach (var line in _input)
        {
            if (line.First() == '(')
            {
                var symbol = line.Replace("(", "").Replace(")", "");
                _symbolTable.AddLabel(symbol, counter);
            }
            else
            {
                counter++;
            }
        }
    }

    public IEnumerable<IInstruction> SecondPass() =>
        _input.Select(line => (IInstruction)(line.First() switch
        {
            '@' => new AInstruction(_symbolTable, line.Replace("@", "")),
            '(' => new LInstruction(line.Replace("(", "").Replace(")", "")),
            _ => new CInstruction(line)
        }));
}

public interface IInstruction { }

public class AInstruction : IInstruction
{
    public readonly int Value;
    
    public AInstruction(SymbolTable symbolTable, string instruction)
    {
        Value = int.TryParse(instruction, out var val) ? val : symbolTable.GetAddress(instruction);
    }
}

public class CInstruction : IInstruction
{
    public string? Dest;
    public string Comp;
    public string? Jump;
    
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

public class LInstruction : IInstruction
{
    public readonly string Symbol;
    
    public LInstruction(string instruction)
    {
        Symbol = instruction;
    }
}