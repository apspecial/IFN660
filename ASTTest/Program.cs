using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ASTTest
{
    class Program
    {
        static void Main(string[] args)
        {
            CompilationUnit compilationunit = new CompilationUnit(null, null,
                    new NormalClassDeclaration(
                         ClassModifier.Public, new Identifier("HelloWorld"),
                            new ClassBody(new MethodDeclaration(
                                new List<MethodModifier> { MethodModifier.Public, MethodModifier.Static },
                                new MethodHeader(new Result(), new MethodDeclarator(new Identifier("main"), null)),
                                new MethodBody(new BlockStatement(
                                    new VariableDeclarationStatement(new UnannType(), new Identifier("x")),
                                    new ExpressionStatement(new AssignmentExpression(new Identifier("x"), new IntegerLiteral(42)))))))));
            compilationunit.DumpValue(0);
            Console.ReadKey();
        }
    }
}
