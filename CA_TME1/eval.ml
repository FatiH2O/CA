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
 |Print(x) ->  let result= eval x in printf(result); return result