let _ =
  let lexbuf = Lexing.from_channel stdin in
  let ast = Parser.minibasic Lex.token lexbuf in
  let result = Eval.eval ast in
  print_int result; print_newline(); flush stdout