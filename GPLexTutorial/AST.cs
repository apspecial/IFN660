#pragma once;

using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace GPLexTutorial
{
	public abstract class Node
	{
		void Indent(int n)
		{
			for (int i = 0; i < n; i++)
				Console.Write("    ");
		}
  

        public abstract void dump(int indent);
        public abstract void ResolveNames(LexicalScope scope);
        public abstract void TypeCheck(int indent);
  

        protected void label(int i, string fmt, params object[] args)
        {
            Indent(i);
            Console.Write(fmt, args);
        }

        public void dump(int i, string name)
        {
            label(i, "{0}:\n", name);
            dump(i + 1);
        }

        public void emit(FileStream outputfile, char fmt)
        {
            //va_list args;
            //va_start(args, fmt);
            //vfprintf(outputfile, fmt, args);
            //fprintf(outputfile, "\n");
            //va_end(args);
        }

        public void DumpValue(int indent)
		{
			//Indent(indent);
			//Console.WriteLine("{0}", GetType().ToString());

			//Indent(indent);
			//Console.WriteLine("{");

			foreach (var field in GetType().GetFields(System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Instance))
			{
				object value = field.GetValue(this);
				Indent(indent + 1);
				if (value is Node)
				{
					Console.WriteLine("{0}: ", field.Name);
					((Node)value).DumpValue(indent + 2);
				}
				else if (value is IEnumerable && !(value is String))
				{
					Console.WriteLine("{0}: [", field.Name);
					var list = (IEnumerable)value;
					foreach (var item in list)
					{
						if (item is Node)
							((Node)item).DumpValue(indent + 2);
						else
						{
							Indent(indent + 2);
							Console.WriteLine(item);
						}
					}
					Indent(indent + 1);
					Console.WriteLine("]");
				}
				else
					Console.WriteLine("{0}: {1}", field.Name, value);
			}

			//Indent(indent);
			//Console.WriteLine("}");
		}
	}
	public abstract class Expression : Node { }
	public abstract class Statement : Node { }
	public class IntegerLiteral : Expression
	{
		private int value;
		public IntegerLiteral(int value)
		{
			this.value = value;
		}
        public override void dump(int indent)
        {
        
        }
   
        public override void ResolveNames(LexicalScope scope)
        {

        }
        public override void TypeCheck(int indent)
        {
           
        }
        public void GenCode(FileStream file)
        {
          
        }

    }
	public class Identifier : Expression
	{
		private string name;
		public Identifier(string name)
		{
			this.name = name;
		}
        public override void dump(int indent)
        {
            // label(indent, "IdentifierExpression {0}\n", name);
        }
    
    
        public override void ResolveNames(LexicalScope scope)
        {

        }
        public override void TypeCheck(int indent)
        {

        }
        public void GenCode(FileStream file)
        {

        }
    }
	public class AssignmentExpression : Expression
	{
		private Identifier lhs;
		private IntegerLiteral rhs;
		public AssignmentExpression(Identifier lhs, IntegerLiteral rhs)
		{
			this.lhs = lhs;
			this.rhs = rhs;
		}
        public override void dump(int indent)
        {
            label(indent, "AssignmentExpression\n");
            lhs.dump(indent + 1, "lhs");
            rhs.dump(indent + 1, "rhs");
        }


        public override void ResolveNames(LexicalScope scope)
        {

        }
        public override void TypeCheck(int indent)
        {

        }
        public void GenCode(FileStream file)
        {

        }

    }
	public class ExpressionStatement : Statement
	{
		private AssignmentExpression assignmentExpression;
		public ExpressionStatement(AssignmentExpression assignmentexpression)
		{
			this.assignmentExpression = assignmentexpression;
		}
        public override void dump(int indent)
        {
            // label(indent, "IdentifierExpression {0}\n", name);
        }

        public override void ResolveNames(LexicalScope scope)
        {

        }
        public override void TypeCheck(int indent)
        {

        }
        public void GenCode(FileStream file)
        {

        }
    }
	public enum UnannType { Int };
	public class VariableDeclarationStatement : Statement
	{
		private UnannType unannType;
		private Identifier variableDeclaration;
		public VariableDeclarationStatement(UnannType unanntype, Identifier variabledeclaration)
		{
			this.unannType = unanntype;
			this.variableDeclaration = variabledeclaration;
		}
        public override void dump(int indent)
        {
			label(indent, "IdentifierExpression {0}\n", variableDeclaration);
        }

        public override void ResolveNames(LexicalScope scope)
        {

        }
        public override void TypeCheck(int indent)
        {

        }
        public void GenCode(FileStream file)
        {

        }

    }
	public class BlockStatement : Node
	{
		private VariableDeclarationStatement variableDeclarationStatement;
		private ExpressionStatement expressionStatement;
		public BlockStatement(VariableDeclarationStatement variabledeclarationstatement, ExpressionStatement expressionstatement)
		{
			this.variableDeclarationStatement = variabledeclarationstatement;
			this.expressionStatement = expressionstatement;
		}
        public override void dump(int indent)
        {

        }

        public override void ResolveNames(LexicalScope scope)
        {

        }
        public override void TypeCheck(int indent)
        {

        }
        public void GenCode(FileStream file)
        {

        }
    }

 
    public class Block : Node
	{
		private List<BlockStatement> blockStatements;
		public Block(List<BlockStatement> blockstatements)
		{
			this.blockStatements = blockstatements;
		}
        public override void dump(int indent)
        {

        }

        public override void ResolveNames(LexicalScope scope)
        {

        }
        public override void TypeCheck(int indent)
        {

        }
        public void GenCode(FileStream file)
        {

        }
    }
	public enum MethodModifier { Public, Static };
	public abstract class FormalParameterList : Node { };
	public class MethodDeclarator : Node
	{
		private Identifier identifier;
		private FormalParameterList formalParameterList;
		public MethodDeclarator(Identifier identifier, FormalParameterList formalparameterlist)
		{
			this.identifier = identifier;
			this.formalParameterList = formalparameterlist;
		}
        public override void dump(int indent)
        {

        }

        public override void ResolveNames(LexicalScope scope)
        {

        }
        public override void TypeCheck(int indent)
        {

        }
        public void GenCode(FileStream file)
        {

        }
    }
	public enum Result { Void };
	public class MethodHeader : Node
	{
		private Result result;
		private MethodDeclarator methodDeclarator;
		public MethodHeader(Result result, MethodDeclarator methoddeclarator)
		{
			this.result = result;
			this.methodDeclarator = methoddeclarator;
		}
        public override void dump(int indent)
        {

        }

        public override void ResolveNames(LexicalScope scope)
        {

        }
        public override void TypeCheck(int indent)
        {

        }
        public void GenCode(FileStream file)
        {

        }
    }
	public class MethodDeclaration : Node
	{
		private List<MethodModifier> methodModifier;
		private MethodHeader methodHeader;
		private Block methodBody;
		public MethodDeclaration(List<MethodModifier> methodmodifier, MethodHeader methodheader, Block methodbody)
		{
			this.methodModifier = methodmodifier;
			this.methodHeader = methodheader;
			this.methodBody = methodbody;
		}
        public override void dump(int indent)
        {

        }

        public override void ResolveNames(LexicalScope scope)
        {

        }
        public override void TypeCheck(int indent)
        {

        }
        public void GenCode(FileStream file)
        {

        }
    }
	public class ClassBody : Node
	{
		private MethodDeclaration methodDeclaration;
		public ClassBody(MethodDeclaration methoddeclaration)
		{
			this.methodDeclaration = methoddeclaration;
		}
        public override void dump(int indent)
        {

        }

        public override void ResolveNames(LexicalScope scope)
        {

        }
        public override void TypeCheck(int indent)
        {

        }
        public void GenCode(FileStream file)
        {

        }
    }
	public enum ClassModifier { Public };
	public class NormalClassDeclaration : TypeDeclaration
    {
		private ClassModifier classModifier;
		private Identifier identifier;
		private ClassBody classBody;
		public NormalClassDeclaration(ClassModifier classmodifier, Identifier identifier, ClassBody classbody)
		{
			this.classModifier = classmodifier;
			this.identifier = identifier;
			this.classBody = classbody;
		}
        public override void dump(int indent)
        {

        }

        public override void ResolveNames(LexicalScope scope)
        {

        }
        public override void TypeCheck(int indent)
        {

        }
        public void GenCode(FileStream file)
        {

        }
    }
    public abstract class TypeDeclaration : Node
    {
    }

    public abstract class PackageDeclaration : Node { };
	public abstract class ImportDeclaration : Node { };
	public class CompilationUnit : Node
	{
		private PackageDeclaration packageDeclaration;
		private List<ImportDeclaration> importDeclaration;
		private TypeDeclaration typeDeclaration;
		public CompilationUnit(PackageDeclaration packagedeclaration, List<ImportDeclaration> importdeclation, TypeDeclaration typedeclaration)
		{
			this.packageDeclaration = packagedeclaration;
			this.importDeclaration = importdeclation;
			this.typeDeclaration = typedeclaration;
		}
        public override void dump(int indent)
        {

        }

        public override void ResolveNames(LexicalScope scope)
        {

        }
        public override void TypeCheck(int indent)
        {

        }
        public void GenCode(FileStream file)
        {

        }
    }

   

}
