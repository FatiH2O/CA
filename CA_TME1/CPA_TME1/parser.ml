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

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
    open Ast
# 17 "parser.ml"
let yytransl_const = [|
  257 (* MUL *);
  258 (* PLUS *);
  259 (* MIN *);
  260 (* DIV *);
  261 (* EOL *);
  262 (* LPAREN *);
  263 (* RPAREN *);
  264 (* PRINT *);
    0|]

let yytransl_block = [|
  265 (* INTEGER *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\003\000\003\000\003\000\006\000\
\006\000\004\000\005\000\005\000\000\000"

let yylen = "\002\000\
\002\000\003\000\003\000\001\000\003\000\003\000\001\000\001\000\
\003\000\002\000\002\000\003\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\008\000\013\000\000\000\000\000\007\000\
\000\000\000\000\000\000\001\000\000\000\000\000\009\000\002\000\
\003\000\005\000\006\000"

let yydgoto = "\002\000\
\005\000\006\000\007\000\000\000\000\000\008\000"

let yysindex = "\002\000\
\011\255\000\000\011\255\000\000\000\000\010\255\015\255\000\000\
\007\255\011\255\011\255\000\000\011\255\011\255\000\000\000\000\
\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\255\254\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\253\255\008\000\000\000\000\000\000\000"

let yytablesize = 22
let yytable = "\009\000\
\004\000\004\000\001\000\004\000\000\000\004\000\016\000\017\000\
\010\000\011\000\000\000\010\000\011\000\015\000\012\000\013\000\
\003\000\000\000\014\000\004\000\018\000\019\000"

let yycheck = "\003\000\
\002\001\003\001\001\000\005\001\255\255\007\001\010\000\011\000\
\002\001\003\001\255\255\002\001\003\001\007\001\005\001\001\001\
\006\001\255\255\004\001\009\001\013\000\014\000"

let yynames_const = "\
  MUL\000\
  PLUS\000\
  MIN\000\
  DIV\000\
  EOL\000\
  LPAREN\000\
  RPAREN\000\
  PRINT\000\
  "

let yynames_block = "\
  INTEGER\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Ast.expr) in
    Obj.repr(
# 21 "parser.mly"
                     ( _1 )
# 95 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 23 "parser.mly"
                      ( ADD(_1, _3) )
# 103 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 24 "parser.mly"
                    ( MIN(_1, _3) )
# 111 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 25 "parser.mly"
             ( _1 )
# 118 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 29 "parser.mly"
                     ( Mul(_1, _3) )
# 126 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 30 "parser.mly"
                    ( DIV(_1, _3) )
# 134 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'factor) in
    Obj.repr(
# 31 "parser.mly"
               ( _1 )
# 141 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 33 "parser.mly"
                 ( INT(_1) )
# 148 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Ast.expr) in
    Obj.repr(
# 34 "parser.mly"
                            ( _2 )
# 155 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr list) in
    Obj.repr(
# 37 "parser.mly"
                        (Print(_2))
# 162 "parser.ml"
               : Ast.instr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Ast.expr) in
    Obj.repr(
# 40 "parser.mly"
              ([_1])
# 169 "parser.ml"
               : Ast.expr list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr list) in
    Obj.repr(
# 41 "parser.mly"
                         (_1::_3)
# 177 "parser.ml"
               : Ast.expr list))
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
