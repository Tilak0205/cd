%option noyywrap
%{
	#include<stdio.h>
	int lc=0,wc=0,ch=0,sc=0;
	
%}

%%
[\n] { lc++; ch+=yyleng;}
[ \t] { sc++; ch+=yyleng;}
[a-zA-Z0-9]+ { wc++; ch+=yyleng;}
%%
int main()
{
        printf("enter");
	yylex();
	printf("line count:%d ,words count:%d ,character count:%d , space count:%d",lc,wc,ch,sc);

	return 0;
}