%{
    #include<stdio.h>
    int temp=0;
%}

%token Number
%left '+''-'
%left '*''/''%'
%left '('')'
%%

A : E{printf("Result : %d",$$);};
E : E '+' E {$$=$1+$3;};
|E '-' E {$$=$1-$3;};
|E '*' E {$$=$1*$3;};
|E '/' E {$$=$1/$3;};
|E '%' E {$$=$1%$3;};
|'('E')' {$$=$2;};
|Number{$$=$1;};
%%
int main(){
    printf("Enter Exp");
    yyparse();
    if(temp==0){
        printf("\n Entered expression is valid");
    }
}
int yyerror(){
    printf("Entered expression is invalid");
    temp=1;
}
