#!/bin/sh

ocamllex lex.mll;
ocamlc -c ast.ml;
ocamlc -c eval.ml;
ocamlyacc parser.mly;
ocamlc -c parser.mli;
ocamlc -c lex.ml;
ocamlc -c parser.ml;
ocamlc -c minibasic.ml;
ocamlc -o minibasic ast.cmo eval.cmo lex.cmo parser.cmo minibasic.cmo
