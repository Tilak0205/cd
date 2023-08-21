%option noyywrap
%{
#include<stdio.h>
int neg=0,pos=0;
%}
%%
[-][0-9]+ {neg++;}
[0-9]+ {pos++;}
[\n] {return 0;}
%%
int main(){
yylex();
printf("Negative count is %d",neg);
printf("Positive count is %d",pos);
return 0;
}
