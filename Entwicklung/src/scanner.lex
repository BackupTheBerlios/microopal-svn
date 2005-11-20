/* Ein Scanner fuer mOPAL. */
/* $Id: scanner.lex,v 1.2 1999/11/17 18:49:32 wg Exp $ */

%{
#include <stdio.h>
int lineNo = 1;
%}
DIGIT  [0-9]
LETTER [A-Z_a-z]
%%
"DEF" {
  printf("%dkDEF\n", lineNo);
}
"MAIN" {
  printf("%dkMAIN\n", lineNo);
}
"==" {
  printf("%dk==\n", lineNo);
}
":" {
  printf("%dk:\n", lineNo);
}
"," {
  printf("%dk,\n", lineNo);
}
"(" {
  printf("%dk(\n", lineNo);
}
")" {
  printf("%dk)\n", lineNo);
}
"nat" {
  printf("%dknat\n", lineNo);
}
"bool" {
  printf("%dkbool\n", lineNo);
}
"true" {
  printf("%dktrue\n", lineNo);
}
"false" {
  printf("%dkfalse\n", lineNo);
}
"IF" {
  printf("%dkIF\n", lineNo);
}
"THEN" {
  printf("%dkTHEN\n", lineNo);
}
"ELSE" {
  printf("%dkELSE\n", lineNo);
}
"FI" {
  printf("%dkFI\n", lineNo);
}

{LETTER}({LETTER}|{DIGIT})* {
  printf("%di%s\n", lineNo, yytext);
}
{DIGIT}+ {
  printf("%dn%s\n", lineNo, yytext);
}
[ \t] {
}
[\n] {
  lineNo++;
}
"-- ".*\n {
  lineNo++;
}
. {
  printf("%d?%s\n", lineNo, yytext);
}
