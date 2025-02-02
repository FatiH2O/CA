type expr=
|INT of int
|ADD of expr*expr
|Mul of expr*expr
|MIN of expr*expr
|DIV of expr*expr

type instr=
|Print of expr list
