%option noyywrap
%{
	#include<stdio.h>
	int ic=0,fc=0;
%}

%%
[0-9]+ {ECHO; printf("\ninteger number\n");ic++;}
[0-9]+"."[0-9]+ {ECHO; printf("\nfloat number\n");fc++;}
%%
int main()
{
        printf("enter:");
	yylex();
	printf("interger count %d, float count %d",ic,fc);
	return 0;
}