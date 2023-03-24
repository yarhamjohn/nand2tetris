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

    public void AddLabelSymbols()
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

    public IEnumerable<IInstruction> ParseInstructions()
    {
        foreach (var line in _input)
        {
            switch (line.First())
            {
                case '(':
                    // LInstruction is a placeholder rather than "real" code
                    continue;
                case '@':
                    yield return new AInstruction(GetARegisterValue(line));
                    break;
                default:
                    yield return new CInstruction(line);
                    break;
            }
        }
    }

    private int GetARegisterValue(string line)
    {
        var instruction = line.Replace("@", "");
        return int.TryParse(instruction, out var val) ? val : _symbolTable.GetAddress(instruction);
    }
}