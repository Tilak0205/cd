%{
#include <stdio.h>
int yylex(void);
%}
%token NUM ID
%left '+' '-'
%left '*' '/'

%%
E : T {printf("Result is %d\n",$1);
	return 0;}
	
T : 
  T '+' T {$$=$1+$3;}
  | T '-' T {$$=$1-$3;}
  | T '*' T {$$=$1*$3;}
  | T '/' T {$$=$1/$3;}
  | NUM {$$=$1;}

%%
int main(){
printf("Enter expr:");
yyparse();

}
int yyerror(){
printf("Invalid expr");
}
