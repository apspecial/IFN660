%namespace GPLexTutorial

%{
int lines = 0;
%}

/* Foo Cheok Kok (Kirill) */
Digit [0-9]
DigitsOrUnderscore {Digit}|[_]
DigitsAndUnderscores {DigitsOrUnderscore}+
Digits {Digit}|{Digit}{DigitsAndUnderscores}?{Digit}
ExponentIndicator [e|E]
Sign +|-
FloatTypeSuffix [f|F|d|D]
SignedInteger {Sign}?{Digits}
ExponentPart {ExponentIndicator}{SignedInteger}


HexDigit [0-9a-fA-F]
HexDigitOrUnderscore {HexDigit}|[_]
HexDigitsAndUnderscores {HexDigitOrUnderscore}+
HexDigits {HexDigit}|{HexDigit}{HexDigitsAndUnderscores}?{HexDigit}
HexSignificand ([0][x|X]{HexDigits}[.]?)|([0][x|X]{HexDigits}?[.]{HexDigits})
BinaryExponent [p|P]{SignedInteger}
DecimalFloatingPointLiteral ({Digits}[.]{Digits}?{ExponentPart}?{FloatTypeSuffix}?)|([.]{Digits}{ExponentPart}?{FloatTypeSuffix}?)|({Digits}{ExponentPart}{FloatTypeSuffix}?)|({Digits}{ExponentPart}?{FloatTypeSuffix})
HexadecimalFloatingPointLiteral {HexSignificand}{BinaryExponent}{FloatTypeSuffix}?
FloatingPointLiteral {DecimalFloatingPointLiteral}|{HexadecimalFloatingPointLiteral}

/* Tri Vu Chau */
Character [a-zA-Z]
NullLiteral [\0]
LineTerminator [\r\n]
WhiteSpace [ \t\f]|{LineTerminator}
RawInputCharacter [\u0020-\u00ff]
UnicodeMarker [u]+
UnicodeEscape [\\]{UnicodeMarker}{HexDigit}{HexDigit}{HexDigit}{HexDigit}
UnicodeInputCharacter {UnicodeEscape}|{RawInputCharacter}
ZeroToThree [0-3]
OctalDigit [0-7]
OctalEscape [\\]({OctalDigit}|{OctalDigit}{OctalDigit}|{ZeroToThree}{OctalDigit}{OctalDigit})
EscapeSequence ([\\][btnfr\"\'\\])|{OctalEscape}
InputCharacter {UnicodeInputCharacter}
SingleCharacter {InputCharacter}
CharacterLiteral [\']({SingleCharacter}|{EscapeSequence})[\']
StringCharacter ({InputCharacter}|{EscapeSequence})
StringLiteral [\"]{StringCharacter}*[\"]

/* (Shawn) */
LineComment \/\/[^\n]* 
BlockComment  \/\*(\s|.)\*?\*\/

%%

/* (Shawn) */
//LineComment					{ yylval.display_str = yytext; return (int)Tokens.LINECOMMENT; }
//BlockComment				{ yylval.display_str = yytext; return (int)Tokens.BLOCKCOMMENT; }

/* Ba Hoang An Nguyen */
/* {DecimalNumeral}{0}|({DecimalNumeral}{NonZeroDigit}{Digits})|({DecimalNumeral}{NonZeroDigit} {Underscores}{Digits}) { yylval.display_num = int.Parse(yytext); return (int)Tokens.INT_DECNUMBER; } */

/* Anthony Edwards */
/* abstract					{ return (int)Tokens.ABSTRACT; }
assert						{ return (int)Tokens.ASSERT; }
boolean						{ return (int)Tokens.BOOLEAN; }
break						{ return (int)Tokens.BREAK; }
byte						{ return (int)Tokens.BYTE; }
case						{ return (int)Tokens.CASE; }
catch						{ return (int)Tokens.CATCH; }
char						{ return (int)Tokens.CHAR; } */
class						{ return (int)Tokens.CLASS; }
/* const						{ return (int)Tokens.CONST; }
continue					{ return (int)Tokens.CONTINUE; }
default						{ return (int)Tokens.DEFAULT; }
do							{ return (int)Tokens.DO; }
double						{ return (int)Tokens.DOUBLE; }
else						{ return (int)Tokens.ELSE; }
enum						{ return (int)Tokens.ENUM; }
extends						{ return (int)Tokens.EXTENDS; }
final						{ return (int)Tokens.FINAL; }
finally						{ return (int)Tokens.FINALLY; }
float						{ return (int)Tokens.FLOAT; }
for							{ return (int)Tokens.FOR; }
if							{ return (int)Tokens.IF; }
goto						{ return (int)Tokens.GOTO; }
implements					{ return (int)Tokens.IMPLEMENTS; }
import						{ return (int)Tokens.IMPORT; }
instanceof					{ return (int)Tokens.INSTANCEOF; } */
int							{ return (int)Tokens.INT; }
/* interface					{ return (int)Tokens.INTERFACE; }
long						{ return (int)Tokens.LONG; }
native						{ return (int)Tokens.NATIVE; }
new							{ return (int)Tokens.NEW; }
package						{ return (int)Tokens.PACKAGE; }
private						{ return (int)Tokens.PRIVATE; }
protected					{ return (int)Tokens.PROTECTED; } */
public						{ return (int)Tokens.PUBLIC; }
/* return						{ return (int)Tokens.RETURN; }
short						{ return (int)Tokens.SHORT; } */
static						{ return (int)Tokens.STATIC; }
/* strictfp					{ return (int)Tokens.STRICTFP; }
super						{ return (int)Tokens.SUPER; }
switch						{ return (int)Tokens.SWITCH; }
synchronized				{ return (int)Tokens.SYNCHRONIZED; }
this						{ return (int)Tokens.THIS; }
throw						{ return (int)Tokens.THROW; }
throws						{ return (int)Tokens.THROWS; }
transient					{ return (int)Tokens.TRANSIENT; }
try							{ return (int)Tokens.TRY; } */
void						{ return (int)Tokens.VOID; }
//volatile					{ return (int)Tokens.VOLATILE; }
/* while						{ return (int)Tokens.WHILE; } */
"("							{ return '('; }
")"							{ return ')'; }
"{"							{ return '{'; }
"}"							{ return '}'; }
"["							{ return '['; }
"]"							{ return ']'; }
";"							{ return ';'; }
","							{ return ','; }
"."							{ return '.'; }
//[.]{3}						{ return (int)Tokens.VARARGS; }
"@"							{ return '@'; }
//[:]{2}						{ return (int)Tokens.METHODREFERENCE; }
"="							{ return '='; }
">"							{ return '>'; }
"<"							{ return '<'; }
"!"							{ return '!'; }
"~"							{ return '~'; }
"?"							{ return '?'; }
":"							{ return ':'; }
//"->"						{ return (int)Tokens.LAMBDA; }
/* [=]{2}						{ return (int)Tokens.EQUALTO; }
">="						{ return (int)Tokens.GREATERTHANOREQUAL; }
"<="						{ return (int)Tokens.LESSTHANOREQUAL; }
"!="						{ return (int)Tokens.NOTEQUAL; }
[&]{2}						{ return (int)Tokens.LOGICALAND; }
[||]{2}						{ return (int)Tokens.LOGICALOR; }
[+]{2}						{ return (int)Tokens.INCREMENT; }
"--"						{ return (int)Tokens.DECREMENT; } */
"+"							{ return '+'; }
"-"							{ return '-'; }
"*"							{ return '*'; }
"/"							{ return '/'; }
"&"							{ return '&'; }
"|"							{ return '|'; }
"^"							{ return '^'; }
"%"							{ return '%'; }
/* [<]{2}						{ return (int)Tokens.LEFTSHIFT; }
[>]{2}						{ return (int)Tokens.RIGHTSHIFT; }
[>]{3}						{ return (int)Tokens.ZEROFILLRIGHTSHIFT; }
"+="						{ return (int)Tokens.ADDITIONASSIGNMENT; }
"-="						{ return (int)Tokens.SUBTRACTIONASSIGNMENT; }
"*="						{ return (int)Tokens.MULTIPLICATIONASSIGNMENT; }
"/="						{ return (int)Tokens.DIVISIONASSIGNMENT; }
"&="						{ return (int)Tokens.BITWISEANDASSIGNMENT; }
"|="						{ return (int)Tokens.BITWISEORASSIGNMENT; }
"^="						{ return (int)Tokens.BITWISEXORASSIGNMENT; }
"%="						{ return (int)Tokens.MODULUSASSIGNMENT; }
[<]{2}[=]					{ return (int)Tokens.LEFTSHIFTASSIGNMENT; }
[>]{2}[=]					{ return (int)Tokens.RIGHTSHIFTASSIGNMENT; }
[>]{3}[=]					{ return (int)Tokens.ZEROFILLRIGHTSHIFTASSIGNMENT; } */

/* End Anthony Edwards */

/* Foo Cheok Kok (Kirill) Boolean */

/* BOOL						{ return (int)Tokens.BOOLEAN; } 
True						{ yylval.display_str = yytext; return (int)Tokens.BOOLEAN; }
False						{ yylval.display_str = yytext; return (int)Tokens.BOOLEAN; }
true						{ yylval.display_str = yytext; return (int)Tokens.BOOLEAN; }
false						{ yylval.display_str = yytext; return (int)Tokens.BOOLEAN; }
TRUE						{ yylval.display_str = yytext; return (int)Tokens.BOOLEAN; }
FALSE						{ yylval.display_str = yytext; return (int)Tokens.BOOLEAN; } */


/* Foo Cheok Kok (Kirill) Corrector 
"\t"						{ yylval.display_char = '\t'; return (int)Tokens.CHARACTER; }
"\v"						{ yylval.display_char = '\v'; return (int)Tokens.CHARACTER; }
"\a"						{ yylval.display_char = '\a'; return (int)Tokens.CHARACTER; }
"\b"						{ yylval.display_char = '\b'; return (int)Tokens.CHARACTER; }
"\f"						{ yylval.display_char = '\f'; return (int)Tokens.CHARACTER; }
"\'"						{ yylval.display_char = '\''; return (int)Tokens.CHARACTER; }
"\""						{ yylval.display_char = '\"'; return (int)Tokens.CHARACTER; }
"\\"						{ yylval.display_char = '\\'; return (int)Tokens.CHARACTER; }
"\0"						{ yylval.display_char = '\0'; return (int)Tokens.CHARACTER; } */

/* End Foo Cheok Kok (Kirill) */

/* Tri Vu Chau */
/* {NullLiteral} { yylval.display_str = yytext; return (int)Tokens.NULL; }
{StringLiteral} { yylval.display_str = yytext; return (int)Tokens.STRING; }
{CharacterLiteral} { yylval.display_str = yytext; return (int)Tokens.CHAR; } */

/* End Tri Vu Chau */

/* Tu Pham */

// {FloatingPointLiteral} {yylval.display_str = yytext; return (int)Tokens.FLOATINGPOINTLITERAL; }

{Character}({Character}|{Digit})* { yylval.name = yytext; return (int)Tokens.Identifier; }
{Digit}+	    { yylval.num = int.Parse(yytext); return (int)Tokens.IntegerLiteral; }

/* End Tu Pham */
[\n]		{ lines++;    }
[ \t\r]      /* ignore other whitespace */

.                            { 
                                 throw new Exception(
                                     String.Format(
                                         "unexpected character '{0}'", yytext)); 
                             }

%%

public override void yyerror( string format, params object[] args )
{
    System.Console.Error.WriteLine("Error: line {0}, {1}", lines,
        String.Format(format, args));
}

