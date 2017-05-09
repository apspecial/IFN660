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
	public MethodModifiers methModis;
    public MethodModifier methModi;
    public Result result;
	public BlockStatement blksta;
	public BlockStatements blkstas;
	public VariableDeclarationStatement variablestate;
	public MethodDeclarator methodecla;
	public MethodHeader methodhea;
	public MethodBody methodbd;
	public ExpressionStatement expstm;
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
%type <methModis> MethodModifiers
%type <methDecl> MethodDeclaration
%type <result> Result
%type <blksta> BlockStatement
%type <variablestate> VariableDeclarationStatement
%type <methodecla> MethodDeclarator
%type <methodhea> MethodHeader
%type <methodbd> MethodBody
%type <blkstas> BlockStatements
%type <expstm> ExpressionStatement

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

TypeDeclaration
	: NormalClassDeclaration   { $$ = new TypeDeclaration($1); }
	;

NormalClassDeclaration
	: ClassModifier CLASS Identifier TypeParameters '{' ClassBody '}'  {$$ = new NormalClassDeclaration($1,$3,$6);}
	;

ClassModifier
	: PUBLIC  
	;

TypeParameters
	: empty
	;

Identifier
	: IDENT  {$$ = new Identifier($1);}
	;

ClassBody
	: MethodDeclaration {$$ = new ClassBody($1);}
	| empty
	;

MethodDeclaration
    : MethodModifiers MethodHeader MethodBody	{$$ = new MethodDeclaration($1,$2,$3);}
    | empty
    ;

MethodModifiers
	: MethodModifiers MethodModifier			{$$ = new MethodModifiers($2);}
	| empty
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
    | empty
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
