%{
    #include <stdio.h>
    int i;
%}

%%
[0-9]+ {i=atoi(yytext);
if(i%2==0){
    printf("Even");
}
else{
    printf("odd");
}
}
[a-zA-Z][a-zA-Z0-9]* {printf("Word \n");}
%%

int yywrap(){};
int main(){
    yylex();
}