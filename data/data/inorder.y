%{
	#include<stdio.h>
%}

%token id '+' '*' '/' '-'
%left '+' '-'
%left '*' '/'
%left '(' ')'

%% 
S : E {printf("Result = %d ",$1);};
E : E '+' E {$$=$1+$3;}
    |E '-' E {$$=$1-$3;}
    |E '*' E {$$=$1*$3;}
    |E '/' E {$$=$1/$3;}
    |'(' E ')' {$$=$1;}
    | id {$$=$1;}

%%
int main(){
	yyparse();
	return 0;
}
int yyerror(char *s)
{
	printf("%s",s);
}