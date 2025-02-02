type token =
  | MUL
  | PLUS
  | MIN
  | DIV
  | EOL
  | LPAREN
  | RPAREN
  | INTEGER of (int)

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
    open Ast
# 16 "parser.ml"
let yytransl_const = [|
  257 (* MUL *);
  258 (* PLUS *);
  259 (* MIN *);
  260 (* DIV *);
  261 (* EOL *);
  262 (* LPAREN *);
  263 (* RPAREN *);
    0|]

let yytransl_block = [|
  264 (* INTEGER *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\003\000\003\000\003\000\004\000\
\004\000\000\000"

let yylen = "\002\000\
\002\000\003\000\003\000\001\000\003\000\003\000\001\000\001\000\
\003\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\008\000\010\000\000\000\000\000\007\000\
\000\000\000\000\000\000\001\000\000\000\000\000\009\000\002\000\
\003\000\005\000\006\000"

let yydgoto = "\002\000\
\005\000\006\000\007\000\008\000"

let yysindex = "\010\000\
\253\254\000\000\253\254\000\000\000\000\010\255\015\255\000\000\
\007\255\253\254\253\254\000\000\253\254\253\254\000\000\000\000\
\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\255\254\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\253\255\004\000\000\000"

let yytablesize = 19
let yytable = "\009\000\
\004\000\004\000\003\000\004\000\004\000\004\000\016\000\017\000\
\010\000\011\000\001\000\010\000\011\000\015\000\012\000\013\000\
\018\000\019\000\014\000"

let yycheck = "\003\000\
\002\001\003\001\006\001\005\001\008\001\007\001\010\000\011\000\
\002\001\003\001\001\000\002\001\003\001\007\001\005\001\001\001\
\013\000\014\000\004\001"

let yynames_const = "\
  MUL\000\
  PLUS\000\
  MIN\000\
  DIV\000\
  EOL\000\
  LPAREN\000\
  RPAREN\000\
  "

let yynames_block = "\
  INTEGER\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Ast.expr) in
    Obj.repr(
# 17 "parser.mly"
                     ( _1 )
# 92 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 19 "parser.mly"
                      ( ADD(_1, _3) )
# 100 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 20 "parser.mly"
                    ( MIN(_1, _3) )
# 108 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 21 "parser.mly"
             ( _1 )
# 115 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 23 "parser.mly"
                     ( Mul(_1, _3) )
# 123 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 24 "parser.mly"
                    ( DIV(_1, _3) )
# 131 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'factor) in
    Obj.repr(
# 25 "parser.mly"
               ( _1 )
# 138 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 27 "parser.mly"
                 ( INT(_1) )
# 145 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Ast.expr) in
    Obj.repr(
# 28 "parser.mly"
                            ( _2 )
# 152 "parser.ml"
               : 'factor))
(* Entry minibasic *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let minibasic (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.expr)
;;
