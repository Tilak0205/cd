%option noyywrap
%{
	#include<stdio.h>
	int length;
%}

%%
[a-zA-Z0-9]+ {length=yyleng; fun(length);}   
%%
fun(int l)
{
      if(yytext[0]=='a' | yytext[0]=='A')
		{
		  if(length==3)
		    printf("%s is the word len 3\n",yytext);
		  else
		   printf("%s len not equal to 3\n",yytext);
		   }

		  else
		   printf("%s not begin with a\n",yytext);
		   }
		   
int main()
{

   yylex();
	return 0;
}