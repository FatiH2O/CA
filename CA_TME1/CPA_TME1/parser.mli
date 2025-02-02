type token =
  | MUL
  | PLUS
  | MIN
  | DIV
  | EOL
  | LPAREN
  | RPAREN
  | PRINT
  | INTEGER of (int)

val minibasic :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast.expr
