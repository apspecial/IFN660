%namespace GPLexTutorial

%union
{
    public int num;
    public string name;
    public CompilationUnit compUnit;
    public TypeDeclaration typeDecl;
}

%token <num> NUMBER
%token <name> IDENT 
%token PUBLIC CLASS STATIC VOID INT

%left '='TypeDeclarations
%nonassoc '<'
%left '+'

%type <compUnit> CompilationUnit
%type <typeDecl> TypeDeclaration

%%

CompilationUnit
	: PackageDeclaration_opt ImportDeclarations TypeDeclaration   { $$=new CompilationUnit(null,null,$3); }
	;


empty: ;
PackageDeclaration_opt
	: PackageDeclaration 
	| empty
	;
PackageDeclaration
	: empty
	;
ImportDeclarations
	: ImportDeclaration
	| ImportDeclaration ImportDeclarations 
	| empty
	;
ImportDeclaration
	: empty
	;
TypeDeclaration 
	: TypeDeclarations TypeDeclaration { $$ = null; }
	| empty
	;

TypeDeclaration
	: ClassDeclaration
	;

ClassDeclaration
	: NormalClassDeclaration;
NormalClassDeclaration
	: ClassModifiers CLASS IDENT TypeParameters_opt Superclass_opt SuperInterfaces_opt ClassBody
	;
ClassModifiers
	: ClassModifier
	| ClassModifier ClassModifiers
	;
ClassModifier
	: PUBLIC
	;
TypeParameters_opt
	: TypeParameters
	| empty
	;
TypeParameters
	: empty
	;
Superclass_opt
	: Superclass
	;
Superclass
	: empty
	;
SuperInterfaces_opt
	: SuperInterfaces
	| empty
	;
SuperInterfaces
	: empty
	;
ClassBody
	: '{' ClassBodyDeclarations '}'
	;
ClassBodyDeclarations
	: ClassBodyDeclaration
	| ClassBodyDeclaration ClassBodyDeclarations
	;
ClassBodyDeclaration
	: ClassMemberDeclaration
	;
ClassMemberDeclaration
	: MethodDeclaration
	;
MethodDeclaration
	: MethodModifiers MethodHeader MethodBody
	;
MethodModifiers
	: MethodModifier
	| MethodModifier MethodModifiers
	;
MethodModifier
	: PUBLIC
	| STATIC
	;
MethodHeader
	: Result MethodDeclarator Throws_opt
	;
Result
	: VOID
	;
MethodDeclarator
	: IDENT '(' FormalParameterList ')' Dims_opt
	;
FormalParameterList
	: FormalParameter
	| FormalParameter FormalParameter
	;
FormalParameter
	: VariableModifiers UnannType VariableDeclaratorId
	;
Dims_opt
	: Dims
	| empty
	;
Dims
	: empty
	;
Throws_opt
	: Throws
	| empty
	;
Throws
	: empty
	;
MethodBody
	: Block
	;
Block
	: '{' BlockStatements '}'
	;
BlockStatements
	: BlockStatement
	| BlockStatement BlockStatements
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
	: VariableModifier
	| VariableModifier VariableModifiers
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
	: VariableDeclaratorId VariableInitializer_opt
	;
VariableDeclaratorId
	: IDENT Dims_opt
	;
VariableInitializer_opt
	: empty
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
