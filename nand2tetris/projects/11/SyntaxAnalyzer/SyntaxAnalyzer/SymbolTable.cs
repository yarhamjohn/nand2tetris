namespace SyntaxAnalyzer;

public class SymbolTable
{
    private readonly string _objectName;
    private readonly string _objectType;
    private readonly string _objectKind;
    private readonly List<Symbol> _symbols = new();

    public SymbolTable(string objectName, string objectType, string objectKind)
    {
        _objectName = objectName;
        _objectType = objectType;
        _objectKind = objectKind;
    }
    
    public void Reset() => _symbols.Clear();

    public void Add(string name, string type, string kind) =>
        _symbols.Add(new Symbol(name, type, kind, NumDefined(kind)));

    public int NumDefined(string kind) => _symbols.Count(s => s.Kind == kind);

    public Symbol? GetSymbol(string name) => _symbols.SingleOrDefault(s => s.Name == name);

    public string GetObjectName() => _objectName;
    public string GetObjectType() => _objectType;
    public string GetObjectKind() => _objectKind;
}

public record Symbol(string Name, string Type, string Kind, int Index);
