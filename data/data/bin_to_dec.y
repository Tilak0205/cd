%{
#include<stdio.h>
int yyerror(char *s);


%}
%token NUM

%%
D:E {$$=$1;printf("value is %d",$$);}
E:E NUM {$$=($1*2)+$2;}
 |NUM {$1=yylval;}
%%
int main(){
	printf("Enter expr:");
	yyparse();
}
int yyerror(char *s){
	printf("Invalid");
}

