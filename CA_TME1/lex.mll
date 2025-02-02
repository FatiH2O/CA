{
    open Parser
}

let integer= '-'?['0'-'9']+
let spaces= [' ' '\t']
let eol= '\n'

rule token = parse
    spaces          {token lexbuf}
    |"+"            {PLUS}
    |"*"            {MUL}
    |"-"            {MIN}
    |"/"            {DIV}
    |"("            {LPAREN}
    |")"            {RPAREN}
    |"print"        {pr}
    |";"            {vir}