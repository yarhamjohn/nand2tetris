namespace SyntaxAnalyzer;

public class SymbolTable
{
    private readonly string _className;
    private string? _subroutineKind;
    private readonly List<Symbol> _classSymbols = new();
    private readonly List<Symbol> _subroutineSymbols = new();

    public SymbolTable(string className)
    {
        _className = className;
    }
    
    public void AddClassVar(string name, string type, string kind) =>
        _classSymbols.Add(new Symbol(name, type, kind, NumDefined(kind)));
    
    public void AddParameter(string name, string type) => AddSubroutineSymbol(name, type, "argument");
    public void AddVar(string name, string type) => AddSubroutineSymbol(name, type, "var");
    
    private void AddSubroutineSymbol(string name, string type, string kind) =>
        _subroutineSymbols.Add(new Symbol(name, type, kind, NumDefined(kind)));

    public int NumDefined(string kind) => _classSymbols.Concat(_subroutineSymbols).Count(s => s.Kind == kind);

    public Symbol? GetSymbol(string name)
    {
        // name may be a built-in class so not in the symbol table
        var symbol = _classSymbols.Concat(_subroutineSymbols).SingleOrDefault(s => s.Name == name);
        if (symbol is null)
        {
            return null;
        }

        var newKind = symbol.Kind switch
        {
            "field" => "this", // fields are stored in the "this" segment
            "var" => "local", // vars are stored in the "local" segment
            _ => symbol.Kind
        };
        
        return symbol with { Kind = newKind }; 
    }

    public string GetClassName() => _className;

    public void CreateSubroutineSymbolTable(string kind)
    {
        _subroutineSymbols.Clear();
        _subroutineKind = kind;
        if (kind == "method")
        {
            // The first symbol in any method should be an "argument" with the name "this"
            // and the type of the class the method belongs to ("_className")
            AddSubroutineSymbol("this", _className, "argument");
        }
    }

    public string? GetSubroutineKind() => _subroutineKind;
}

public record Symbol(string Name, string Type, string Kind, int Index);
