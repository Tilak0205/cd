%{
#include<stdio.h>
%}
%token id
%%
E : E E '+'
  | E E '-'
  | E E '*'
  | id
%%
int main(){
	printf("enter string\n");
	yyparse();
	printf("valid");
}
int yyerror(char* e){
	printf("error %s",e);
}
