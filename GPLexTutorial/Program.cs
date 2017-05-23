<<<<<<< HEAD
﻿using System;
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
        //extern int yylex();
        //extern int yyparse();
        // extern Node roote;
        public static void Main(string[] args)
        {
            Scanner scanner = new Scanner(new FileStream(args[0], FileMode.Open));
            Parser parser = new Parser(scanner);
            if (parser.Parse())
            {
                Parser.root.DumpValue(0);

                //int x;
                // Parser.root.dump(0);
                //SemanticAnalysis(Parser.root);
                //Parser.root.DumpValue(0);

                //yyparse();
                // Node root = null ;
                //char i = '0';
                // if (root != null)
                // {
                //root->dump(0);
                //  SemanticAnalysis(root);
                //  //root->dump(0);
                // CodeGeneration(i, root);
                // }

            }
        }

        public static void SemanticAnalysis(Node root)
        {
            root.ResolveNames(null);
            // root.TypeCheck(0);

            //bool success;

            // name resolution
            // success = root.ResolveNames(null);
            // if (!success)
            // {
            //     System.Console.WriteLine("*** ERROR - Name Resolution Failed ***");
            //     throw new Exception("Name Resolution Error");
            // }

            // type checking
            root.TypeCheck(0);
        }

        public static void CodeGeneration(char inputfile, Node root)
        {
            //char* outputFilename = (char*)malloc(strlen(inputfile) + 3);
            //sprintf(outputFilename, "%s.il", inputfile);
            //FILE* outputFile = fopen(outputFilename, "w");

            // this toy language doesn't have classes or methods so we need to create a dummy class and main method to host user code ...
            //root->emit(outputFile, ".assembly %s {}", inputfile);
            //root->emit(outputFile, ".class %s {", inputfile);
            //root->emit(outputFile, ".method static void Main(string[] args) {");
            // root->emit(outputFile, ".entrypoint");

            // root->GenCode(outputFile);

            //root->emit(outputFile, "ret");
            //root->emit(outputFile, "}"); // end of Main
            //root->emit(outputFile, "}"); // end of class
        }
    }
}
=======
﻿using System;
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
        //extern int yylex();
        //extern int yyparse();
       // extern Node roote;
        public static void Main(string[] args)
        {   
            Scanner scanner = new Scanner(new FileStream(args[0], FileMode.Open));
            Parser parser = new Parser(scanner);
            if (parser.Parse())
            {               
                SemanticAnalysis(Parser.root);
                Parser.root.DumpValue(0);
            }
        }

        public static void SemanticAnalysis(Node root)
        {
            root.ResolveNames(null);
            root.TypeCheck(0);
        }

        public static void CodeGeneration(char inputfile, Node root)
        {
            //char* outputFilename = (char*)malloc(strlen(inputfile) + 3);
            //sprintf(outputFilename, "%s.il", inputfile);
            //FILE* outputFile = fopen(outputFilename, "w");

            // this toy language doesn't have classes or methods so we need to create a dummy class and main method to host user code ...
            //root->emit(outputFile, ".assembly %s {}", inputfile);
            //root->emit(outputFile, ".class %s {", inputfile);
            //root->emit(outputFile, ".method static void Main(string[] args) {");
            // root->emit(outputFile, ".entrypoint");

            // root->GenCode(outputFile);

            //root->emit(outputFile, "ret");
            //root->emit(outputFile, "}"); // end of Main
            //root->emit(outputFile, "}"); // end of class
        }
    }
}
>>>>>>> d7606bcfcfc15b7767567010fe0c815b0dc96c01
