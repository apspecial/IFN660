using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AST
{
    public abstract class Node
    {
        void Indent(int n)
        {
            for (int i = 0; i < n; i++)
                Console.Write("    ");
        }

        public void DumpValue(int indent)
        {
            Indent(indent);
            Console.WriteLine("{0}", GetType().ToString());

            Indent(indent);
            Console.WriteLine("{");

            foreach (var field in GetType().GetFields(System.Reflection.BindingFlags.NonPublic |
                                                                           System.Reflection.BindingFlags.Instance))
            {
                object value = field.GetValue(this);
                Indent(indent + 1);
                if (value is Node)
                {
                    Console.WriteLine("{0}:", field.Name);
                    ((Node)value).DumpValue(indent + 2);
                }
                else
                    Console.WriteLine("{0}: {1}", field.Name, value);
            }

            Indent(indent);
            Console.WriteLine("}");
        }
    };

    public class PackageDeclaration:Node {};
    public class ImportDeclaration : Node { };
    public class CompilationUnit : Node 
    {
        private PackageDeclaration packageDeclaration;
        private List<ImportDeclaration> importDeclarations;
        private List<TypeDeclaration> typeDeclarations;

        public CompilationUnit(PackageDeclaration packageDeclaration, List<ImportDeclaration> importDeclarations, List<TypeDeclaration> typeDeclarations)
        {
            this.packageDeclaration = packageDeclaration; 
            this.importDeclarations = importDeclarations;
            this.typeDeclarations = typeDeclarations;
        }


    };
    public class TypeDeclaration : Node { };
    public class NormalClassDeclaration : TypeDeclaration
    {
    };


    public abstract class ClassModifier : Node { };
    public abstract class Identifier : Node { };
    public abstract class MethodeDeclaration : NormalClassDeclaration
    {
    };
    public abstract class Result : Node { };
    public abstract class MethodeModifier : MethodeDeclaration { };
    public abstract class LocalVariableDeclaration : Node { };
    public abstract class IntegerType : Node { };
    public abstract class VariableDeclarationIdentifier : Node { };
    public abstract class ClassMOdifier : Node { };
    public abstract class Expression : Node { };
    public abstract class Statement : Node { };
    public class IfStatement : Statement
    {
        private Expression Cond;
        private Statement Then, Else;
        public IfStatement(Expression Cond, Statement Then, Statement Else)
        {
            this.Cond = Cond; this.Then = Then; this.Else = Else;
        }
    };
    public class PlusExpression : Expression
    {
        private Expression lhs, rhs;
        public PlusExpression(Expression lhs, Expression rhs)
        {
            this.lhs = lhs;
            this.rhs = rhs;
        }
    };
    public class IntegerLiteral : Expression
    {
        private int value;
        public IntegerLiteral(int value)
        {
            this.value = value;
        }
    };
}
