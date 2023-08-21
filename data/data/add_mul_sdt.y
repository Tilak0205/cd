%{
    #include<stdio.h>
     extern int yylval;
%}

%token Number '+' '*'
%%
A : E{printf("%d",$1);};
E : E '+' T {$$=$1+$3;};
E : T {$$=$1;};
T : T '*' F {$$=$1*$3;};
T : F {$$=$1;};
F : Number{$$=$1;}; 
%%
int main(){
    printf("Enter Exp");
    yyparse();
}
int yyerror(char *s){
    printf("%s",s);
}
