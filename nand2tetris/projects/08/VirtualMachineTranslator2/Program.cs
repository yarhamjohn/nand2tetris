using VirtualMachineTranslator2;

var inputFilePath = args[0];

// Read the input file into memory
var input = File.ReadAllLines(inputFilePath);
var fileName = Path.GetFileNameWithoutExtension(inputFilePath);

// Exclude blank lines, comments and whitespace
input = input
    .Where(line => !string.IsNullOrWhiteSpace(line))
    .Where(line => line.Trim()[..2] != "//")
    .Select(x => x.Split("//").First().Trim())
    .ToArray();

// Initialise parser
var parser = new Parser(input, fileName);

// Parse commands
var commands = parser.ParseCommands();

// Initialize codeWriter and get hack assembly code
var codeWriter = new CodeWriter(commands);
var output = codeWriter.Translate();

// Output the binary to a file
var outputFilePath = inputFilePath.Replace(".vm", ".asm");
File.WriteAllLines(outputFilePath, output);