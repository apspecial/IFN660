using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
namespace JavaCompiler
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
        }
        public abstract bool ResolveNames(LexicalScope scope);
        public abstract void CheckType(int indent);
        public abstract void GenerateCode(StreamWriter stream);
    }
    public abstract class Expression : Node { }
    public abstract class Statement : Node { }
    public class IntegerLiteral : Expression
    {
        public int value;
        public IntegerLiteral(int value)
        {
            this.value = value;
        }
        public override bool ResolveNames(LexicalScope scope)
        {
            return true;
        }
        public override void CheckType(int indent)
        {
        }
        public override void GenerateCode(StreamWriter stream)
        {
        }
    }
    public class Identifier : Expression
    {
        private string name = "";
        private Declaration declaration;
        public string Name
        {
            get { return name; }
            set { name = value; }
        }
        public Identifier(string name)
        {
            this.name = name;
        }
        public override bool ResolveNames(LexicalScope scope)
        {
            if (scope != null)
            {
                declaration = scope.Resolve(name);
            }
            return true;
        }
        public override void CheckType(int indent)
        {
        }
        public override void GenerateCode(StreamWriter stream)
        { }
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
        public override bool ResolveNames(LexicalScope scope)
        {
            lhs.ResolveNames(scope);
            rhs.ResolveNames(scope);
            return true;
        }
        public override void CheckType(int indent)
        {
        }
        public override void GenerateCode(StreamWriter stream)
        {
            stream.BaseStream.Seek(0, SeekOrigin.End);
            stream.WriteLine("ldc.i4.s {0}", ((IntegerLiteral)rhs).value);
            stream.WriteLine("stloc.0");
        }
    }
    public class ExpressionStatement : Statement
    {
        private Assignment assignment;
        public ExpressionStatement(Assignment assignment)
        {
            this.assignment = assignment;
        }
        public override bool ResolveNames(LexicalScope scope)
        {
            assignment.ResolveNames(scope);
            return true;
        }
        public override void CheckType(int indent)
        {
        }
        public override void GenerateCode(StreamWriter stream)
        {
            assignment.GenerateCode(stream);
        }
    }
    public enum IntegralType { Int };
    public class UnannType : Type
    {
        public override string GetTypeName(){
            return "";
        }
        public override bool Equal(Type other)
        {
            if (other as UnannType != null)
                return true;
            else
                return false;
        }
        public override bool ResolveNames(LexicalScope scope)
        {
            ResolveNames(scope);
            return true;
        }
        public override void CheckType(int indent)
        {
        }
        public override void GenerateCode(StreamWriter stream)
        {
        }
    }
    public class NameType : UnannType
    {
        public override string GetTypeName()
        {
            return "string";
        }
        private string typeName;
        public NameType(string typeName)
        {
            this.typeName = typeName;
        }
        public override bool Equal(Type other)
        {
            if (other as NameType != null)
                return true;
            else
                return false;
        }
    }
    public class PrimitiveType : UnannType
    {
        private IntegralType integraltype;
        public PrimitiveType(IntegralType integraltype)
        {
            this.integraltype = integraltype;
        }
        public override bool Equal(Type other)
        {
            if (other as PrimitiveType != null)
                return true;
            else
                return false;
        }
        public override string GetTypeName()
        {
            return "int32";
        }
    }
    public class ArrayType : UnannType
    {
        private UnannType arrayType;
        public ArrayType(UnannType arrayType)
        {
            this.arrayType = arrayType;
        }
        public override string GetTypeName()
        {
            return arrayType.GetTypeName() + "[]";
        }
        public override bool Equal(Type other)
        {
            if (other as ArrayType != null)
                return true;
            else
                return false;
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
        public override bool ResolveNames(LexicalScope scope)
        {
            ResolveNames(scope);
            return true;
        }
        public override void CheckType(int indent)
        {
        }
        public override void GenerateCode(StreamWriter stream)
        {
        }
    }
    public class LocalVariableDeclaration : Statement, Declaration
    {
        private UnannType unannType;
        private Identifier variableDeclarator;
        public string GetName()
        {
            return variableDeclarator.Name;
        }
        public LocalVariableDeclaration(UnannType unanntype, Identifier variabledeclarator)
        {
            this.unannType = unanntype;
            this.variableDeclarator = variabledeclarator;
        }
        public Type GetTypeFrom()
        {
            return unannType;
        }
        public override bool ResolveNames(LexicalScope scope)
        {
            variableDeclarator.ResolveNames(scope);
            return true;
        }
        public override void CheckType(int indent)
        {
        }
        public override void GenerateCode(StreamWriter stream)
        {
            stream.BaseStream.Seek(0, SeekOrigin.End);
            switch (unannType.GetTypeName())
            {
                case "int32":
                    break;
            }
            string s = string.Format(".locals init ([0] {0} {1})", unannType.GetTypeName(), variableDeclarator.Name);
            stream.WriteLine(s);
        }
    }
    public class LocalVariableDeclarationStatement : Node
    {
        private LocalVariableDeclaration localVariableDeclaration;
        public LocalVariableDeclarationStatement(LocalVariableDeclaration localvariabledeclaration)
        {
            this.localVariableDeclaration = localvariabledeclaration;
        }
        public override bool ResolveNames(LexicalScope scope)
        {
            localVariableDeclaration.ResolveNames(scope);
            return true;
        }
        public override void CheckType(int indent)
        {
        }
        public override void GenerateCode(StreamWriter stream)
        {
        }
    }
    public class Block : Statement
    {
        private List<Statement> blockStatements;
        public Block(List<Statement> blockstatements)
        {
            this.blockStatements = blockstatements;
        }
        public override bool ResolveNames(LexicalScope scope)
        {
            var newScope = new LexicalScope(scope);
            foreach (var blkstat in blockStatements)
                if (blkstat is Declaration)
                {
                    var decl = (Declaration)blkstat;
                    newScope.Add(decl);
                }
            foreach (var blkstat in blockStatements)
                ResolveNames(newScope);
            return true;
        }
        public override void CheckType(int indent)
        {
        }
        public override void GenerateCode(StreamWriter stream)
        {
            stream.BaseStream.Seek(0, SeekOrigin.End);
            foreach (Statement statement in blockStatements)
            {
                statement.GenerateCode(stream);
            }
            stream.WriteLine("ret");
        }
    }
    public enum MethodModifier { Public, Static };
    public class FormalParameter : Node, Declaration
    {
        private UnannType unannType;
        private Identifier variableDeclarator;
        public FormalParameter(UnannType unanntype, Identifier variabledeclarator)
        {
            this.unannType = unanntype;
            this.variableDeclarator = variabledeclarator;
        }
        public Type GetTypeFrom()
        {
            return unannType;
        }
        public string GetName()
        {
            return variableDeclarator.Name;
        }
        public override bool ResolveNames(LexicalScope scope)
        {
            variableDeclarator.ResolveNames(scope);
            return true;
        }
        public override void CheckType(int indent)
        {
        }
        public override void GenerateCode(StreamWriter stream)
        {
        }
    }
    public class MethodDeclarator : Node
    {
        private Identifier identifier;
        private List<FormalParameter> formalParameterList;
        public List<FormalParameter> FormalParameterList
        {
            get { return formalParameterList; }
            set { formalParameterList = value; }
        }

        public Identifier Identifier
        {
            get
            {
                return identifier;
            }

            set
            {
                identifier = value;
            }
        }

        public MethodDeclarator(Identifier identifier, List<FormalParameter> formalparameterlist)
        {
            this.identifier = identifier;
            this.formalParameterList = formalparameterlist;
        }
        public override bool ResolveNames(LexicalScope scope)
        {
            identifier.ResolveNames(scope);
            var newScope = new LexicalScope(scope);
            foreach (var formal in formalParameterList)
                if (formal is Declaration)
                {
                    var decl = (Declaration)formal;
                    newScope.Add(decl);
                }
            foreach (var formal in formalParameterList)
                ResolveNames(newScope);
            return true;
        }
        public override void CheckType(int indent)
        {
        }
        public override void GenerateCode(StreamWriter stream)
        {
        }
    }
    public enum Result { Void };
    public class MethodHeader : Node
    {
        public Result result;
        public MethodDeclarator methodDeclarator;
        public MethodHeader(Result result, MethodDeclarator methoddeclarator)
        {
            this.result = result;
            this.methodDeclarator = methoddeclarator;
        }
        public override bool ResolveNames(LexicalScope scope)
        {
            methodDeclarator.ResolveNames(scope);
            return true;
        }
        public override void CheckType(int indent)
        {
        }
        public override void GenerateCode(StreamWriter stream)
        {
        }
    }
    public class MethodDeclaration : Node
    {
        private List<MethodModifier> methodmodifiers;
        private MethodHeader methodHeader;
        private Block methodBody;
        public MethodDeclaration(List<MethodModifier> methodmodifier, MethodHeader methodheader, Block methodbody)
        {
            this.methodmodifiers = methodmodifier;
            this.methodHeader = methodheader;
            this.methodBody = methodbody;
        }
        public override bool ResolveNames(LexicalScope scope)
        {
            methodHeader.ResolveNames(scope);
            methodBody.ResolveNames(scope);
            return true;
        }
        public override void CheckType(int indent)
        {
        }
        public override void GenerateCode(StreamWriter stream)
        {
            stream.BaseStream.Seek(0, SeekOrigin.End);
            string modifiers = "";
            foreach (MethodModifier modifier in methodmodifiers)
            {
                switch (modifier)
                {
                    case MethodModifier.Public:
                        modifiers += "public ";
                        break;
                    case MethodModifier.Static:
                        modifiers += "static ";
                        break;
                }
            }
            string result = "";
            switch (methodHeader.result)
            {
                case Result.Void:
                    result = "void ";
                    break;
            }
            string name = "";
            name = methodHeader.methodDeclarator.Identifier.Name;

            string parameters = "";
            Type a;
            foreach (FormalParameter parameter in methodHeader.methodDeclarator.FormalParameterList)
            {
                ArrayType arrayType = new ArrayType(new NameType("nametype"));
                if (parameter.GetTypeFrom().Equal(arrayType))
                {
                    parameters += ((ArrayType)parameter.GetTypeFrom()).GetTypeName() + " " + parameter.GetName() + ",";
                }
            }
            parameters = parameters.Remove(parameters.Length - 1);
            stream.WriteLine(".method {0}{1}{2}({3})", modifiers, result, name, parameters);
            stream.WriteLine("{");
            if (name.ToLower() == "main")
            {
                stream.WriteLine(".entrypoint");
                stream.WriteLine(".maxstack 1");
            }
            else { }
            methodBody.GenerateCode(stream);
            stream.WriteLine("}");
        }
    }
    public class ClassBody : Node
    {
        private MethodDeclaration methodDeclaration;
        public ClassBody(MethodDeclaration methoddeclaration)
        {
            this.methodDeclaration = methoddeclaration;
        }
        public override bool ResolveNames(LexicalScope scope)
        {
            methodDeclaration.ResolveNames(scope);
            return true;
        }
        public override void CheckType(int indent)
        {
        }
        public override void GenerateCode(StreamWriter stream)
        {
            stream.BaseStream.Seek(0, SeekOrigin.End);
            methodDeclaration.GenerateCode(stream);
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
        public override bool ResolveNames(LexicalScope scope)
        {
            identifier.ResolveNames(scope);
            //classBody.ResolveNames(scope);
            return true;
        }
        public override void CheckType(int indent)
        {
        }
        public override void GenerateCode(StreamWriter stream)
        {
            stream.BaseStream.Seek(0, SeekOrigin.End);
            string modifier = "";
            switch (classModifier)
            {
                case ClassModifier.Public:
                    modifier = "public ";
                    break;
            }
            stream.WriteLine(".class {0}{1}", modifier, identifier.Name);
            stream.WriteLine("{");
            classBody.GenerateCode(stream);
            stream.WriteLine("}");
        }
    }
    public abstract class TypeDeclaration : Node { };
    public abstract class PackageDeclaration : Node { };
    public abstract class ImportDeclaration : Node { };
    public class CompilationUnit : Node
    {
        private PackageDeclaration packageDeclaration;
        private List<ImportDeclaration> importDeclaration;
        private NormalClassDeclaration typeDeclaration;
        public CompilationUnit(PackageDeclaration packagedeclaration, List<ImportDeclaration> importdeclation, NormalClassDeclaration typedeclaration)
        {
            this.packageDeclaration = packagedeclaration;
            this.importDeclaration = importdeclation;
            this.typeDeclaration = typedeclaration;
        }
        public override bool ResolveNames(LexicalScope scope)
        {

            if (typeDeclaration != null)
            {
                typeDeclaration.ResolveNames(scope);
            }
            return true;
        }
        public override void CheckType(int indent)
        {
        }
        public override void GenerateCode(StreamWriter stream)
        {
            stream.BaseStream.Seek(0, SeekOrigin.End);
            typeDeclaration.GenerateCode(stream);
        }
    }
}
