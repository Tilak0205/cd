%{
#include <stdio.h>
int c = 0,c1=0;
%}

%%
[a-zA-Z0-9]+ {c=yyleng; fun(c);}

%%
int fun(int l){
 	if(yytext[0]=='A' || yytext[0]=='a'){

	if(l==3){
		printf("Starts with a and length is 3 %s\n",yytext);
		c1++;
	}
	else{
		printf("starts a but no len=3\n");
	}
	
	}	
}
int yywrap(){return 1;}
int main() {
    yylex();
    printf("%d",c1);
    return 0;
}

