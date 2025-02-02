%{
    open Ast
%}

%token MUL , PLUS , MIN, DIV, EOL,LPAREN,RPAREN,PRINT, ;
%token<int> INTEGER
%start minibasic
%type <Ast.expr> minibasic
%type <Ast.expr> expr
%type <Ast.expr> term
%type <Ast.expr> 
%left PLUS,MIN
%left MUL, DIV

%%



minibasic : expr EOL { $1 } ;

expr : expr PLUS expr { ADD($1, $3) }
     |expr MIN expr { MIN($1, $3) }
     | term  { $1 };

instr:

term : term MUL term { Mul($1, $3) }
     |term DIV term { DIV($1, $3) }
     | factor  { $1 } ;

factor : INTEGER { INT($1) }
       | LPAREN expr RPAREN { $2 } ;

%%