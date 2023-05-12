using VirtualMachineTranslator3;

string GetOutputPath(string s)
{
    if (File.Exists(s))
    {
        return s.Replace(".vm", ".asm");
    }

    return s + "\\" + Path.GetFileNameWithoutExtension(s) + ".asm";
}

var path = args[0];

var commands = new Parser(path).Parse();

var output = new CodeWriter(commands).Translate();

File.WriteAllLines(GetOutputPath(path), output);