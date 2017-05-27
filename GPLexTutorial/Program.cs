using System.IO;
namespace JavaCompiler
{
    class Program
    {
        public static void Main(string[] args)
        {
            FileStream stream = new FileStream(args[0], FileMode.Open);
            Scanner scanner = new Scanner(stream);
            Parser parser = new Parser(scanner);
            bool status = parser.Parse();
            stream.Close();
            if (status == true)
            {               
                SemanticAnalysis(Parser.root);
                Parser.root.DumpValue(0);
                CodeGeneration(args[0].Substring(0, args[0].LastIndexOf('.')), Parser.root);
            }
        }
        public static void SemanticAnalysis(Node root)
        {
            root.ResolveNames(null);
            root.CheckType(0);
        }
        public static void CodeGeneration(string file, Node root)
        {
            StreamWriter stream = new StreamWriter(file + ".il");
            stream.WriteLine(".assembly extern mscorlib", file);
            stream.WriteLine("{}");
            stream.WriteLine(".assembly {0}", file);
            stream.WriteLine("{}");
            stream.WriteLine(".module {0}", file);
            root.GenerateCode(stream);
            stream.Close();
        }
    }
}
