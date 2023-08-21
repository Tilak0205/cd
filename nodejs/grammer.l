%{
#include<stdio.h>
#include "grammer.tab.h"
%}
%%
[a] { return id;}
. { return yytext[0];}
\n {return 0;}
%%
int yywrap(){ return 1;}
