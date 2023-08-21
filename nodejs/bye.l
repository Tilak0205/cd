%{
#include <stdio.h>
%}

%%
"hi"{printf("bye");}
%%

int main()
{
printf("enter the input");
yylex();
return 0;
}
int yywrap()
{
return 1;
}