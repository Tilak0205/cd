%{
#include <stdio.h>
int float=0;
int count =0;
}%

%%
[0-9]+ {ECHO; printf("%d is inttegre",i); i++;}
%%

int main()
{
printf("enter any integer:");
yylex();
}

int yywrap()
{
return 1;
}