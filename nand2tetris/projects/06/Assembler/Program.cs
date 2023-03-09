using Assembler;

var inputFilePath = args[0];

// Read the input file into memory
var input = File.ReadAllLines(inputFilePath);

// Exclude blank lines, comments and whitespace
input = input
    .Where(line => !string.IsNullOrWhiteSpace(line))
    .Where(line => line.Trim()[..2] != "//")
    .Select(x => x.Split("//").First().Trim())
    .ToArray();

// Initialise the symbol table with predefined symbols
var symbolTable = new SymbolTable();

// Initialise parser
var parser = new Parser(input, symbolTable);

// First pass to add label symbols to the symbol table
parser.FirstPass();

// Second pass to parse each instruction
var instructions = parser.SecondPass();

// Initialize coder and get assembled binary
var coder = new Coder(instructions);
var output = coder.Assemble();

// Output the binary to a file
var outputFilePath = inputFilePath.Replace(".asm", "1.hack");
File.WriteAllLines(outputFilePath, output);