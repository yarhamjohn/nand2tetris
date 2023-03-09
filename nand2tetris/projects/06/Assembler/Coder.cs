namespace Assembler;

public class Coder
{
    private readonly IEnumerable<IInstruction> _instructions;

    private readonly Dictionary<string, string> _compBinaryMap = new()
    {
        { "0", "0101010" }, { "1", "0111111" }, { "-1", "0111010" }, { "D", "0001100" },
        { "A", "0110000" }, { "!D", "0001101" }, { "!A", "0110001" }, { "-D", "0001111" },
        { "-A", "0110011" }, { "D+1", "0011111" }, { "A+1", "0110111" }, { "D-1", "0001110" },
        { "A-1", "0110010" }, { "D+A", "0000010" }, { "D-A", "0010011" }, { "A-D", "0000111" },
        { "D&A", "0000000" }, { "D|A", "0010101" }, { "M", "1110000" }, { "!M", "1110001" },
        { "-M", "1110011" }, { "M+1", "1110111" }, { "M-1", "1110010" }, { "D+M", "1000010" },
        { "D-M", "1010011" }, { "M-D", "1000111" }, { "D&M", "1000000" }, { "D|M", "1010101" }
    };

    private readonly Dictionary<string, string> _destBinaryMap = new()
    {
        { "M", "001" }, { "D", "010" }, { "A", "100" },
        { "DM", "011" }, {"MD", "011"}, { "AM", "101" }, { "MA", "101" }, { "AD", "110" }, { "DA", "110" },
        { "ADM", "111" }, { "AMD", "111" }, { "DAM", "111" }, { "DMA", "111" }, { "MAD", "111" }, { "MDA", "111" }
    };

    private readonly Dictionary<string, string> _jumpBinaryMap = new()
    {
        { "JGT", "001" }, { "JEQ", "010" }, { "JGE", "011" }, { "JLT", "100" },
        { "JNE", "101" }, { "JLE", "110" }, { "JMP", "111" }
    };
    
    public Coder(IEnumerable<IInstruction> instructions)
    {
        _instructions = instructions;
    }

    public IEnumerable<string> Assemble()
    {
        foreach (var line in _instructions)
        {
            // Ignore LInstructions as they are placeholders rather than 'real' code
            if (line is LInstruction)
            {
                continue;
            }
            
            if (line is AInstruction aInstruction) {
                yield return Convert.ToString(aInstruction.Value, 2).PadLeft(16, '0');
            }

            if (line is CInstruction cInstruction)
            {
                var comp = _compBinaryMap[cInstruction.Comp];
                var dest = cInstruction.Dest is null ? "000" : _destBinaryMap[cInstruction.Dest];
                var jump = cInstruction.Jump is null ? "000" : _jumpBinaryMap[cInstruction.Jump];
                yield return "111" + comp + dest + jump;
            }
        }
    }
}
