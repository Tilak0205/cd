%{
	#include<stdio.h>
	#include<stdlib.h>
%}

%%
\/\/(a-zA-Z0-9.*) {};
\/\*(a-zA-Z0-9.*\n)*.*\*\/ {};

%%
int yywrap()
{
return 1;
}
int main( )
{
   yyin=fopen("a.c","r");
   yyout=fopen("b2.c","w");
   yylex();

	return 0;
}