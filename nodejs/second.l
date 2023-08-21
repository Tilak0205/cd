%{
    #include<stdio.h>
%}

%%
"CSE"  {printf("welcome %s",yytext);}
%%
int yywrap(){}
int main(){
    yylex();
    return 0;
}
