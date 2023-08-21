%option noyywrap
%{
	#include<stdio.h>
	int vc=0;
	int cc=0;
%}

%%
[aeiouAEIOU] {vc++;}
[a-zA-Z] {cc++;}
%%
int main()
{
printf("enter string");
yylex();
printf("no.of vowels:%d no.of consonants %d",vc,cc);
	return 0;
}