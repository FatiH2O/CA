open Ast

let rec eval e =
  match e with
  | ADD(left, right) -> eval left + eval right
  | Mul(left, right) -> eval left * eval right
  | DIV(left,right) -> eval left * eval right
  | MIN(left,right) -> eval left * eval right
  | INT(x) -> x

  and

 evalinstr e =
  match e with 
  |Print(a) ->  let rec evalprint x = 
    match x with
    |[]-> print_newline
    | v::t -> let res =  print_int (eval v ) in evalprint t in  evalprint a;

  