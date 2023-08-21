%option noyywrap
%{
	#include<stdio.h>
%}

%%
[a-zA-Z]*    { if(yyleng==3)
		{
		  if(yytext[0]=='a' | yytext[0]=='A')
		    printf("%s is the word len 3\n",yytext);
		  else
		   printf("%s not begin with a\n",yytext);
		   }
		  else
		   printf("%s len not equal to 3\n",yytext);
		   }
		   
%%
int main()
{

   yylex();
	return 0;
}