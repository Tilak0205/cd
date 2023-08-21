%{
	#include<stdio.h>
%}
%token id '+' '-' '*''/'
%left '*' '/'
%left '+' '-'
%%
A : E {printf("postfic exp : %s",$1);}
E : E '+' T {printf("+");};
E : T {};
T : T '*' F {printf("*");};
T : T '-' F {printf("-");};
T : T '/' F {printf("/");};
T : F {};
F : id {$$=$1; printf("%d",$1);};
%%
int main()
{
  yyparse();
}
int yyerror(char *s)
{
   printf("%s",s);
}