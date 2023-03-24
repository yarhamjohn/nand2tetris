namespace VirtualMachineTranslator;

public class Parser
{
    private readonly string[] _input;

    public Parser(string[] input)
    {
        _input = input;
    }

    public IEnumerable<ICommand> ParseCommands()
    {
        foreach (var line in _input)
        {
            var chunks = line.Split(" ");
            if (chunks.First() == "push")
            {
                yield return new CPush(chunks[1], Convert.ToInt32(chunks[2]));
            }

            if (chunks.First() == "add")
            {
                yield return new CAdd();
            }
        }
    }
}