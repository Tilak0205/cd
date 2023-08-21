%{
    #include<stdio.h>
    int temp=0;
    int yyerror(char *a);
%}

%token Digit1 Digit2
%%

A : E{printf("Decimal number : %d",$1);};
E : E B {$$=2*$1+$2;};
E : B{$$=$1;};
B: Digit1{$$=$1;};
B :Digit2{$$=$1;};
%%
int main(){
    printf("Enter Exp");
    yyparse();
}
int yyerror(char *s){
   printf("%s",s);
}
