type token =
  | MUL
  | PLUS
  | MIN
  | DIV
  | EOL
  | LPAREN
  | RPAREN
  | INTEGER of (int)

val minibasic :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast.expr
