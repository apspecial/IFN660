using System.IO;
namespace JavaCompiler
{
    class Program
    {
        public static void Main(string[] args)
        {   
            Scanner scanner = new Scanner(new FileStream(args[0], FileMode.Open));
            Parser parser = new Parser(scanner);
            if (parser.Parse())
            {               
                SemanticAnalysis(Parser.root);
                Parser.root.DumpValue(0);
                CodeGeneration(args[1], Parser.root);
            }
        }
        public static void SemanticAnalysis(Node root)
        {
            root.ResolveNames(null);
            root.CheckType(0);
        }
        public static void CodeGeneration(string file, Node root)
        {
            StreamWriter stream = new StreamWriter(file, true);
            stream.WriteLine(".assembly %s {0}", file);
            root.GenerateCode(stream);
            stream.Close();
        }
    }
}
