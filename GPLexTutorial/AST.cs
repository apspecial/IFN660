using System;
using System.Collections;
using System.Collections.Generic;
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
		public void DumpValue(int indent)
		{
			Indent(indent);
			Console.WriteLine("{0}", GetType().ToString());

			Indent(indent);
			Console.WriteLine("{");

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

			Indent(indent);
			Console.WriteLine("}");
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
	}
	public class Identifier : Expression
	{
		private string name;
		public Identifier(string name)
		{
			this.name = name;
		}
	}
	public class Assignment : Statement
	{
		private Identifier lhs;
		private IntegerLiteral rhs;
		public Assignment(Identifier lhs, IntegerLiteral rhs)
		{
			this.lhs = lhs;
			this.rhs = rhs;
		}
	}
	public class ExpressionStatement : Statement
	{
		private Assignment assignment;
		public ExpressionStatement(Assignment assignment)
		{
			this.assignment = assignment;
		}
	}
	public enum UnannType { Int };
	public class LocalVariableDeclarationStatement : Statement
	{
		private UnannType unannType;
		private Identifier variableDeclarator;
		public LocalVariableDeclarationStatement(UnannType unanntype, Identifier variabledeclarator)
		{
			this.unannType = unanntype;
			this.variableDeclarator = variabledeclarator;
		}
	}
	public class BlockStatement : Node
	{
		private LocalVariableDeclarationStatement localvariableDeclarationStatement;
		private Statement statement;
		public BlockStatement(LocalVariableDeclarationStatement localvariabledeclarationstatement, Statement statement)
		{
			this.localvariableDeclarationStatement = localvariabledeclarationstatement;
			this.statement = statement;
		}
	}
    public class BlockStatements: Node
    {
        private List<BlockStatement> blockStatement;
        public BlockStatements(List<BlockStatement> blockstatement)
        {
            this.blockStatement = blockstatement;
        }
    }
	public class Block : Node
	{
		private BlockStatements blockStatements;
		public Block(BlockStatements blockstatements)
		{
			this.blockStatements = blockstatements;
		}
	}
	public enum MethodModifier { Public, Static };
    public class MethodModifiers : Node
    {
        private List<MethodModifier> methodModifier;
        public MethodModifiers(List<MethodModifier> methodmodifier)
        {
            this.methodModifier = methodmodifier;
        }
    }
	public class FormalParameter : Node
    {
        private UnannType unannType;
        private Identifier variableDeclarator;
        public FormalParameter(UnannType unanntype, Identifier variabledeclarator)
        {
            this.unannType = unanntype;
            this.variableDeclarator = variabledeclarator;
        }
    }
    public class FormalParameterList : Node
    {
        private List<FormalParameter> formalParameter;
        public FormalParameterList(List<FormalParameter> formalparameter)
        {
            this.formalParameter = formalparameter;
        }
    }
	public class MethodDeclarator : Node
	{
		private Identifier identifier;
		private FormalParameterList formalParameterList;
		public MethodDeclarator(Identifier identifier, FormalParameterList formalparameterlist)
		{
			this.identifier = identifier;
			this.formalParameterList = formalparameterlist;
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
	}
	public class MethodDeclaration : Node
	{
		private MethodModifiers methodModifiers;
		private MethodHeader methodHeader;
		private Block methodBody;
		public MethodDeclaration(MethodModifiers methodmodifiers, MethodHeader methodheader, Block methodbody)
		{
			this.methodModifiers = methodmodifiers;
			this.methodHeader = methodheader;
			this.methodBody = methodbody;
		}
	}
	public class ClassBody : Node
	{
		private MethodDeclaration methodDeclaration;
		public ClassBody(MethodDeclaration methoddeclaration)
		{
			this.methodDeclaration = methoddeclaration;
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
	}
}
