namespace VirtualMachineTranslator;

public interface ICommand { }

public class CPush : ICommand
{
    private readonly string _target;
    public readonly int Value;

    public CPush(string target, int value)
    {
        _target = target;
        Value = value;
    }
    
    public override string ToString()
    {
        return $"push {_target} {Value}";
    }
}

public class CAdd : ICommand { }