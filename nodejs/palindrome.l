%{
    #include <stdio.h>
    int i,j,temp;
%}

%%
[a-zA-Z0-9]* {
    for(i=0,j=yyleng-1;i<=j;i++,j--){
        if(yytext[i]==yytext[j]){
            temp=1;
        }
        else{
            temp=0;
            break;
        }
    }
    if(temp==1){
        printf("It is palindrome");
    }
    else{
        printf("It is not palindrome");
    }
}
%% 
int yywrap(){};
int main(){
    yylex();
}