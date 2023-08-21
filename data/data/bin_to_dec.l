%option noyywrap
%{
#include "bin_to_dec.tab.h"

%}
%%
[01] {yylval=atoi(yytext);return NUM;}
. ;
[\n] {return 0;}
%%

