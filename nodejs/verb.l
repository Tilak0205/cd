%{
#include<stdio.h>
%}

%%

he|she|it|i|we|you|they {printf("This is pronoun\n");}
[a-zA-Z]+(ing|ed|nt|am) {printf("%s is verb",yytext);}
([a-zA-Z])+ {printf("This is a noun");}
%%

int yywrap(){};

int main(){
yylex();
return 0;}
