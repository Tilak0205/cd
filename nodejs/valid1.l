%{
#include<stdio.h>
%}

%%
^[a-zA-Z_][a-zA-Z0-9_]* printf("valid var");

.* printf(" not valid var");
%%
int yywrap(){};
int main(){
    yylex();
}