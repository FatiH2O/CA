%{
    open Ast
%}

%token MUL , PLUS , MIN, DIV, EOL,LPAREN,RPAREN,PRINT,
%token<int> INTEGER
%start minibasic
%type <Ast.expr> minibasic
%type <Ast.expr> expr
%type <Ast.expr> term
%type <Ast.instr> instr
%type <Ast.expr list> expr_list
%left PLUS,MIN ,PRINT
%left MUL, DIV


%%



minibasic : instr EOL { $1 } ;

instr: PRINT expr_list {Print($2)}

expr : expr PLUS expr { ADD($1, $3) }
     |expr MIN expr { MIN($1, $3) }
     | term  { $1 };



term : term MUL term { Mul($1, $3) }
     |term DIV term { DIV($1, $3) }
     | factor  { $1 } ;

factor : INTEGER { INT($1) }
       | LPAREN expr RPAREN { $2 } 


 

expr_list:
     expr ';' {[$1]}
     |expr ';' expr_list {$1::$3};

%%