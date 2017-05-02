﻿%namespace GPLexTutorial

%union
{
    public int num;
    public string name;
    public CompilationUnit compUnit;
    public TypeDeclaration typeDecl;
    public NormalClassDeclaration normclassDecl;
    public ClassModifier classModi;  
    public Identifier identi;
    public ClassBody classBodi;
    public MethodDeclaration methDecl;
    public MethodModifier methModi;
    public List<MethodModifier> methmodilist;
    public Result result;
	public BlockStatement blksta;

	public VariableDeclarationStatement variablestate;
	public MethodDeclarator methodecla;
	public MethodHeader methodhea;
	public MethodBody methodbd;
}

%token <num> NUMBER
%token <name> IDENT 
%token PUBLIC CLASS STATIC VOID INT
%token PRIVATE PROTECTED 

%left '=' 
%nonassoc '<'
%left '+'

%type <compUnit> CompilationUnit
%type <typeDecl> TypeDeclaration
%type <normclassDecl> NormalClassDeclaration
%type <classModi> ClassModifier
%type <identi> Identifier
%type <classBodi> ClassBody
%type <methModi> MethodModifier
%type <methDecl> MethodDeclaration
%type <methmodilist> MethodModifierList
%type <result> Result
%type <blksta> BlockStatement
%type <variablestate> VariableDeclarationStatement
%type <methodecla> MethodDeclarator
%type <methodhea> MethodHeader
%type <methodbd> MethodBody

%%

CompilationUnit
	: PackageDeclaration ImportDeclarations TypeDeclaration   { $$=new CompilationUnit(null,null,$3); }
	;

empty: ;

PackageDeclaration
	: empty
	;

ImportDeclarations
	: ImportDeclaration ImportDeclarations  
	| empty
	;

ImportDeclaration
	: empty
	;

TypeDeclarations 
	: TypeDeclaration TypeDeclarations  
	| empty
	;

TypeDeclaration
	: NormalClassDeclaration   { $$ = new TypeDeclaration($1); }
	;

NormalClassDeclaration
	:ClassModifier CLASS Identifier TypeParameters '{' ClassBody '}'  {$$ = new NormalClassDeclaration($1,$3,$6);}
	;


ClassModifier
	: PUBLIC  
	;

TypeParameters
	: empty
	;

Identifiers
	: Identifier Identifiers  
	| empty
	;

Identifier
	: IDENT  {$$ = new Identifier($1);}
	;

ClassBody
	: MethodDeclaration {$$ = new ClassBody($1);}
	| empty
	;

MethodDeclaration
    : MethodModifierList MethodHeader MethodBody {$$ = new MethodDeclaration($1,$2,$3);}
    | empty
    ;

MethodModifierList : MethodModifierList MethodModifier                     { $$ = $1; $$ = $1.Add($2);    }
              | empty                                                      { $$ = new List<MethodModifier>(); }
              ;



MethodModifier
    : PUBLIC
    | STATIC
    | empty
    ;

MethodHeader
    : Result MethodDeclarator       {$$ = new MethodHeader($1,$2);}
    | empty
    ;

Result
    :VOID
    ;

MethodDeclarator
    :Identifier '(' FormalParameterList ')'  {$$ = new MethodDeclarator($1,null);}
    |empty
    ;

FormalParameterList
    : FormalParameterList FormalParameter    
    | empty
    ;

FormalParameter
    : VariableModifiers UnannType VariableDeclaratorId 
    ;

VariableModifiers
    :empty            
    ;

VariableDeclaratorId
    :empty            
    ;

UnannType
    :empty            
    ;

MethodBody
    : '{' BlockStatements '}'   {$$ = new MethodBody($2);} 
    ;

BlockStatements
    : BlockStatement BlockStatements  
    | empty
    ;

BlockStatement
    : VariableDeclarationStatement ExpressionStatement  {$$ = new BlockStatement($1,$2);}
    | empty 
    ;

VariableDeclarationStatement
    : empty                         
    ;

ExpressionStatement
    : empty                         
    ;

%%

public Parser(Scanner scanner) : base(scanner)
{

}
