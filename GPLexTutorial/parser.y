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
    public Result result;
	public BlockStatement blksta;
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
%type <methDecl> MethodDeclaration
%type <result> Result
%type <blksta> BlockStatement
%type <methodecla> MethodDeclarator
%type <methodhea> MethodHeader
%type <methodbd> MethodBody
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
	: empty
	;

TypeDeclaration
	: NormalClassDeclaration   { $$ = $1; }
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
    : MethodModifiers MethodHeader MethodBody
    | empty
    ;

MethodModifiers
	: MethodModifiers MethodModifier			
	| empty
	;

MethodModifier
    : PUBLIC 
	| STATIC
    ;

MethodHeader
    : Result MethodDeclarator       {$$ = new MethodHeader($1,$2);}
    ;

Result
    : VOID
    ;

MethodDeclarator
    : Identifier '(' FormalParameterList ')'  {$$ = new MethodDeclarator($1,null);}
    ;

FormalParameterList
    : FormalParameterList FormalParameter    
    | empty
    ;

FormalParameter
    : VariableModifiers UnannType VariableDeclaratorId 
    ;

MethodBody 
	: Block
	;

Block
    : '{' BlockStatements '}'   
    ;

BlockStatements
	: BlockStatements BlockStatement
	| empty
	;

BlockStatement
	: LocalVariableDeclarationStatement
	| Statement
	;

LocalVariableDeclarationStatement
	: LocalVariableDeclaration ';'
	;

LocalVariableDeclaration
	: VariableModifiers UnannType VariableDeclarationList
	;

VariableModifiers
	: VariableModifier VariableModifiers
	| empty
	;

VariableModifier
	: empty
	;
UnannType
	: UnannPrimitiveType
	| UnannReferenceType
	;
UnannReferenceType
	: UnannArrayType
	;
UnannArrayType
	: UnannPrimitiveType '[' ']'
	;
UnannPrimitiveType
	: NumericType
	;
NumericType
	: IntegralType
	;
IntegralType
	: INT
	| IDENT
	;
VariableDeclarationList
	: VariableDeclarator
	;
VariableDeclarator
	: VariableDeclaratorId
	;
VariableDeclaratorId
	: IDENT
	;
Statement
	: StatementWithoutTrailingSubstatement
	;
StatementWithoutTrailingSubstatement
	: ExpressionStatement
	;
ExpressionStatement
	: StatementExpression ';'
	;
StatementExpression
	: Assignment
	;
Assignment
	: LeftHandSide AssignmentOperator Expression
	;
LeftHandSide
	: ExpressionName
	;
ExpressionName
	: IDENT
	;
AssignmentOperator
	: '='
	;
Expression
	: AssignmentExpression
	;
AssignmentExpression
	: ConditionalExpression
	;
ConditionalExpression
	: ConditionalOrExpression
	;
ConditionalOrExpression
	: ConditionalAndExpression
	;
ConditionalAndExpression
	: InclusiveOrExpression
	;
InclusiveOrExpression
	: ExclusiveOrExpression
	;
ExclusiveOrExpression
	: AndExpression
	;
AndExpression
	: EqualityExpression
	;
EqualityExpression
	: RelationalExpression
	;
RelationalExpression
	: ShiftExpression
	;
ShiftExpression
	: AdditiveExpression
	;
AdditiveExpression
	: MultiplicativeExpression
	;
MultiplicativeExpression
	: UnaryExpression
	;
UnaryExpression
	: UnaryExpressionNotPlusMinus
	;
UnaryExpressionNotPlusMinus
	: PostfixExpression
	;
PostfixExpression
	: Primary
	;
Primary
	: PrimaryNoNewArray
	;
PrimaryNoNewArray
	: Literal
	;
Literal
	: IntegerLiteral
	;
IntegerLiteral
	: NUMBER
	;

%%

public Parser(Scanner scanner) : base(scanner)
{

}
