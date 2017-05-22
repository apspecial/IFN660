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

        public static LexicalScope getNewScope(LexicalScope oldScope, Object obj)
        {
            //  new scope
            var newScope = new LexicalScope();
            newScope.ParentScope = oldScope;
            newScope.Symbol_table = new Dictionary<string, Declaration>();

            // Check for declarations in the new scope and add to symbol_table of old scope
            if (obj != null)
            {
                //foreach (Declaration decl in declList)
                {
                    // Declaration decl = each as Declaration; // try to cast statement as a declaration
                    // if (decl != null)
                    // {
                    // decl.AddItemsToSymbolTable(newScope);
                    // }
                }
            }

            return newScope;
        }

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
            //nothing to do
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
        private Declaration declaration;

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
            // check for valid declaration...
            if (scope != null)
            {
                declaration = scope.Resolve(name);
            }

        }

        public override void TypeCheck(int indent)
        {

        }
        public void GenCode(FileStream file)
        {

        }
    }
    public class Assignment : Expression
    {
        private Expression lhs;
        private Expression rhs;
        public Assignment(Expression lhs, Expression rhs)
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
            lhs.ResolveNames(scope);
            rhs.ResolveNames(scope);
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
        private Assignment assignment;
        public ExpressionStatement(Assignment assignment)
        {
            this.assignment = assignment;
        }
        public override void dump(int indent)
        {
            // label(indent, "IdentifierExpression {0}\n", name);
        }

        public override void ResolveNames(LexicalScope scope)
        {
            assignment.ResolveNames(scope);
        }
        public override void TypeCheck(int indent)
        {

        }
        public void GenCode(FileStream file)
        {

        }
    }
    public enum IntegralType { Int };
    public class UnannType : Node
    {

        public override void dump(int indent)
        {

        }

        public override void ResolveNames(LexicalScope scope)
        {
            ResolveNames(scope);

        }
        public override void TypeCheck(int indent)
        {

        }
        public void GenCode(FileStream file)
        {

        }
    };

    public class NamedType : UnannType
    {
        private string typeName;
        public NamedType(string typename)
        {
            this.typeName = typename;
        }
    }

    public class PrimitiveType : UnannType
    {
        private IntegralType integraltype;

        public PrimitiveType(IntegralType integraltype)
        {
            this.integraltype = integraltype;
        }
    }


    public class ArrayType : UnannType
    {
        private UnannType arrayType;
        public ArrayType(UnannType arrayType)
        {
            this.arrayType = arrayType;
        }
    }


    public abstract class VariableModifier : Node { }
    public class VariableModifiers : Node
    {
        private List<VariableModifier> variableModifier;
        public VariableModifiers(List<VariableModifier> varibalemodifier)
        {
            this.variableModifier = varibalemodifier;
        }
        public override void dump(int indent)
        {

        }

        public override void ResolveNames(LexicalScope scope)
        {
            ResolveNames(scope);

        }
        public override void TypeCheck(int indent)
        {

        }
        public void GenCode(FileStream file)
        {

        }
    }
    public class LocalVariableDeclaration : Statement
    {
        private UnannType unannType;
        private Identifier variableDeclarator;

        public LocalVariableDeclaration(UnannType unanntype, Identifier variabledeclarator)
        {
            this.unannType = unanntype;
            this.variableDeclarator = variabledeclarator;
        }
        public override void dump(int indent)
        {

        }

        public override void ResolveNames(LexicalScope scope)
        {
            ResolveNames(scope);

        }
        public override void TypeCheck(int indent)
        {

        }
        public void GenCode(FileStream file)
        {

        }

    }
    public class LocalVariableDeclarationStatement : Node
    {
        private LocalVariableDeclaration localVariableDeclaration;
        public LocalVariableDeclarationStatement(LocalVariableDeclaration localvariabledeclaration)
        {
            this.localVariableDeclaration = localvariabledeclaration;
        }
        public override void dump(int indent)
        {

        }

        public override void ResolveNames(LexicalScope scope)
        {
            ResolveNames(scope);

        }
        public override void TypeCheck(int indent)
        {

        }
        public void GenCode(FileStream file)
        {

        }
    }

    /*
	public class BlockStatement : Node
	{
		private LocalVariableDeclarationStatement variableDeclarationStatement;
		private Statement statement;
		public BlockStatement(LocalVariableDeclarationStatement variabledeclarationstatement, Statement statement)
		{
			this.variableDeclarationStatement = variabledeclarationstatement;
			this.statement = statement;
		}
        public override void dump(int indent)
        {

        }

        public override void ResolveNames(LexicalScope scope)
        {
            var newScope = getNewScope(scope, statement);
            ResolveNames(newScope);
        }
        public override void TypeCheck(int indent)
        {

        }
        public void GenCode(FileStream file)
        {

        }
    }
    */

    public class Block : Statement
    {
        private List<Statement> blockStatements;
        public Block(List<Statement> blockstatements)
        {
            this.blockStatements = blockstatements;
        }
        public override void dump(int indent)
        {

        }

        public override void ResolveNames(LexicalScope scope)
        {
            var newScope = getNewScope(scope, blockStatements);
            foreach (var blkstat in blockStatements)
            {
                //Declaration decl ; 
                if (blkstat != null)
                {
                    // decl.AddItemsToSymbolTable(newScope);
                }
                ResolveNames(newScope);
            }
            // ResolveNames(newScope);
        }
        public override void TypeCheck(int indent)
        {

        }
        public void GenCode(FileStream file)
        {

        }
    }
    public enum MethodModifier { Public, Static };
    public class FormalParameter : Node
    {
        private UnannType unannType;
        private Identifier variableDeclarator;
        public FormalParameter(UnannType unanntype, Identifier variabledeclarator)
        {
            this.unannType = unanntype;
            this.variableDeclarator = variabledeclarator;
        }
        public override void dump(int indent)
        {

        }

        public override void ResolveNames(LexicalScope scope)
        {
            var newScope = getNewScope(scope, variableDeclarator);
            ResolveNames(newScope);
        }
        public override void TypeCheck(int indent)
        {

        }
        public void GenCode(FileStream file)
        {

        }
    }
    public class FormalParameterList : Node
    {
        private List<FormalParameter> formalParameter;
        public FormalParameterList(List<FormalParameter> formalparameter)
        {
            this.formalParameter = formalparameter;
        }
        public override void dump(int indent)
        {

        }

        public override void ResolveNames(LexicalScope scope)
        {
            var newScope = getNewScope(scope, formalParameter);
            ResolveNames(newScope);
        }
        public override void TypeCheck(int indent)
        {

        }
        public void GenCode(FileStream file)
        {

        }
    };
    public class MethodDeclarator : Node
    {
        private Identifier identifier;
        private List<FormalParameter> formalParameterList;
        public MethodDeclarator(Identifier identifier, List<FormalParameter> formalparameterlist)
        {
            this.identifier = identifier;
            this.formalParameterList = formalparameterlist;
        }
        public override void dump(int indent)
        {

        }

        public override void ResolveNames(LexicalScope scope)
        {
            var newScope = getNewScope(scope, formalParameterList);
            ResolveNames(newScope);
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
            var newScope = getNewScope(scope, methodDeclarator);
            ResolveNames(newScope);
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
            var newScope = getNewScope(scope, methodBody);
            ResolveNames(newScope);
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
            var newScope = getNewScope(scope, methodDeclaration);
            ResolveNames(newScope);
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
            // Step 1: Create new scope and populate the symbol table
            var newScope = getNewScope(scope, classBody);

            // Step 2: ResolveNames 
            ResolveNames(newScope);
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

            var newScope = getNewScope(scope, typeDeclaration);


            if (typeDeclaration != null)
            {
                typeDeclaration.ResolveNames(newScope);

            }
        }
        public override void TypeCheck(int indent)
        {

        }
        public void GenCode(FileStream file)
        {

        }
    }
}
