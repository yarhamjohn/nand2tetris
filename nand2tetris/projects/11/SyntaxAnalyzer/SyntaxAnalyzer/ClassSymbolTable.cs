namespace SyntaxAnalyzer;

public interface ISymbolTable
{
    void Reset(); 
    void Add(string name, string type, string kind);
    int NumDefined(string kind);
    Symbol? GetSymbol(string name);
    string GetObjectName();
    string GetObjectType();
    string GetObjectKind();
}

public class ClassSymbolTable : ISymbolTable
{
    private readonly string _objectName;
    private readonly string _objectType;
    private readonly string _objectKind;
    private readonly List<Symbol> _symbols = new();

    public ClassSymbolTable(string objectName, string objectType, string objectKind)
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


public class SubroutineSymbolTable : ISymbolTable
{
    private readonly string _objectName;
    private readonly string _objectType;
    private readonly string _objectKind;
    private readonly ClassSymbolTable _classSymbolTable;
    private readonly List<Symbol> _symbols = new();

    public SubroutineSymbolTable(string objectName, string objectType, string objectKind, ClassSymbolTable classSymbolTable)
    {
        _objectName = objectName;
        _objectType = objectType;
        _objectKind = objectKind;
        _classSymbolTable = classSymbolTable;
    }
    
    public void Reset() => _symbols.Clear();

    public void Add(string name, string type, string kind) =>
        _symbols.Add(new Symbol(name, type, kind, NumDefined(kind)));

    public int NumDefined(string kind) => _symbols.Count(s => s.Kind == kind);

    public Symbol? GetSymbol(string name)
    {
        var subroutineSymbol = _symbols.SingleOrDefault(s => s.Name == name);
        return subroutineSymbol ?? _classSymbolTable.GetSymbol(name);
    }

    public string GetObjectName() => _objectName;
    public string GetObjectType() => _objectType;
    public string GetObjectKind() => _objectKind;
    public string GetClassName() => _classSymbolTable.GetObjectName();
}

public record Symbol(string Name, string Type, string Kind, int Index);
