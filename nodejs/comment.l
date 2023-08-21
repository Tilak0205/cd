%{
#include<stdio.h>
#include<string.h>
int c = 0;
%}


%%
\/\/(.*) {}
\/\*(.*\n)*.*\*\/ {}
%%


int main()
{
    yyin = fopen("input.c","r");
    yyout = fopen("out.c","w");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}
