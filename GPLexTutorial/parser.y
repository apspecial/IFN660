﻿%namespace GPLexTutorial

%{
  public static Node root;
%}

%union
{
    public int num;
    public string name;
    public CompilationUnit compUnit;
    public TypeDeclaration typeDecl;
    public NormalClassDeclaration normclassDecl;
    public ClassModifier classModi;  
    public ClassBody classBodi;
    public MethodDeclaration methDecl;
    public MethodModifier methModi;
    public Result result;
	public BlockStatement blksta;
	public List<BlockStatement> blkstas;
	public Block block;
	public MethodDeclarator methodecla;
	public MethodHeader methodhea;
	public ExpressionStatement expstm;
	public List<MethodModifier> methodmodilist;
	public FormalParameter	fmpara;
	public List<FormalParameter> fmparalist;
	public UnannType untype;
	public VariableModifier varmodi;
	public List<VariableModifier> varmodis;
	public Assignment assign;
	public Expression exp;
	public LocalVariableDeclaration localvardcl;
	public IntegralType inttype;
}

%token <num> IntegerLiteral
%token <name> Identifier 
%token PUBLIC CLASS STATIC VOID INT
%token PRIVATE PROTECTED 

%left '=' 
%nonassoc '<'
%left '+'

%type <compUnit> CompilationUnit
%type <typeDecl> TypeDeclaration 
%type <normclassDecl> NormalClassDeclaration
%type <classModi> ClassModifier
%type <classBodi> ClassBody
%type <methModi> MethodModifier
%type <methDecl> MethodDeclaration
%type <result> Result
%type <blksta> BlockStatement
%type <blkstas> BlockStatements
%type <methodecla> MethodDeclarator
%type <methodhea> MethodHeader
%type <block> Block
%type <block> MethodBody
%type <expstm> ExpressionStatement
%type <methodmodilist> MethodModifiers
%type <fmpara> FormalParameter
%type <fmparalist> FormalParameterList
%type <untype> UnannType
%type <varmodi> VariableModifier
%type <varmodis> VariableModifiers
%type <assign> Assignment
%type <exp> Expression
%type <localvardcl> LocalVariableDeclaration
%type <inttype> IntegralType

%%

CompilationUnit
	: PackageDeclaration ImportDeclarations TypeDeclaration   { root = new CompilationUnit(null,null,$3); }
	;

empty
	: 
	;

PackageDeclaration
	: empty
	;

ImportDeclarations
	: empty
	;

TypeDeclaration
	: NormalClassDeclaration								{ $$ = $1; }
	;

NormalClassDeclaration
	: ClassModifier CLASS Identifier TypeParameters '{' ClassBody '}'  {$$ = new NormalClassDeclaration($1,new Identifier($3),$6);}
	;

ClassModifier
	: PUBLIC												{ $$ = ClassModifier.Public; } 
	;

TypeParameters
	: empty
	;

ClassBody
	: MethodDeclaration										{$$ = new ClassBody($1);}
	| empty
	;

MethodDeclaration
    : MethodModifiers MethodHeader MethodBody				{ $$ = new MethodDeclaration($1,$2,$3); }
    | empty
    ;

MethodModifiers
	: MethodModifier MethodModifiers						{ $$ = $2; $$.Add($1); }
	| empty													{ $$ = new List<MethodModifier>(); }
	;

MethodModifier
    : PUBLIC												{ $$ = MethodModifier.Public; }
	| STATIC												{ $$ = MethodModifier.Static; }
    ;

MethodHeader
    : Result MethodDeclarator								{$$ = new MethodHeader($1,$2);}
    ;

Result
    : VOID													{ $$ = Result.Void; }
    ;

MethodDeclarator
    : Identifier '(' FormalParameterList ')'				{$$ = new MethodDeclarator(new Identifier($1),$3);}
    ;

FormalParameterList
    : FormalParameterList FormalParameter					{ $$ = $1; $$.Add($2); }
    | empty													{ $$ = new List<FormalParameter>(); }
    ;

FormalParameter
    : VariableModifiers UnannType VariableDeclaratorId		{ $$ = new FormalParameter($2,$3); }
    ;


MethodBody 
	: Block													{ $$ = $1; }
	;

Block
    : '{' BlockStatements '}'								{$$ = new Block($2);}
    ;

BlockStatements
	: BlockStatements BlockStatement						{ $$ = $1; $$.Add($2); }
	| empty													{ $$ = new List<BlockStatement>(); }
	;

BlockStatement
	: LocalVariableDeclarationStatement						{ $$ = $1; }
	| Statement												{ $$ = $1; }
	;

LocalVariableDeclarationStatement
	: LocalVariableDeclaration ';'							{ $$ = $1; }
	;

LocalVariableDeclaration
	: VariableModifiers UnannType VariableDeclarator		{ $$ = new LocalVariableDeclaration($2,$3); }
	;

VariableModifiers
	: VariableModifier VariableModifiers					{ $$ = $2; $$.Add($1); }
	| empty													{ $$ = new List<VariableModifier>(); }
	;

VariableModifier
	: empty													{ $$ = null; }
	;

UnannType
	: UnannPrimitiveType									{ $$ = $1; }
	| UnannReferenceType									{ $$ = $1; }
	;

UnannReferenceType
	: Identifier											{$$ = new Identifier($1); }
	;

UnannPrimitiveType
	: NumericType											{ $$ = $1; }
	;

NumericType
	: IntegralType											{ $$ = $1; }
	;

IntegralType
	: INT													{ $$ = IntegralType.Int; }
	;

VariableDeclarator
	: VariableDeclaratorId									{ $$ = $1; }
	;

VariableDeclaratorId
	: Identifier											{ $$ = new Identifier($1); }
	;

Statement
	: ExpressionStatement									{ $$ = $1; }
	;

ExpressionStatement
	: Assignment ';'										{ $$ = new ExpressionStatement($1); }
	;

Assignment
	: LeftHandSide AssignmentOperator Expression			{ $$ = new Assignment($1,$3); }
	;

LeftHandSide
	: Identifier											{ $$ = new Identifier($1); }
	;

AssignmentOperator
	: '='													{ $$ = $1; }
	;

Expression
	: IntegerLiteral										{ $$ = new IntegerLiteral($1); }
	;

%%

public Parser(Scanner scanner) : base(scanner)
{

}
