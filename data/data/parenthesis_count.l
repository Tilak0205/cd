%{
#include "parenthesis_count.tab.h"
extern int yylval;
%}

%%
[( )] return yytext[0];
[0-9]+ return 0;
[\n]	yyterminate();

%%

int yywrap(void){
return 1;
}
