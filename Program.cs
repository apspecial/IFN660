using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AST
{
    class Program
    {
        static void Main(string[] args)
        {
            CompilationUnit compilationUnit = new CompilationUnit(null, new List<ImportDeclaration>(), new List<TypeDeclaration> {new NormalClassDeclaration()});
            compilationUnit.DumpValue(0);
        }
    }
}
