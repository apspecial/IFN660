using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Globalization;
using QUT.Gppg;

namespace GPLexTutorial
{
    class Program
    {
        static void Main(string[] args)
        {
            string a = "ASDfasdf";
            Scanner scanner = new Scanner(
                new FileStream(args[0], FileMode.Open));
            Parser parser = new Parser(scanner);
            parser.Parse();
            root.dump();
        }
    }
}

