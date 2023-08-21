%{

#include <stdio.h>
#include <stdlib.h>
void yyerror(char *s);
int c=0;
%}

%%
E : S {printf("%d\n",c);}
S : '(' S ')' {c+=1;}
S :  {}


%%


int main()
{
	printf("Enter expression: ");
	yyparse();
	return 0;
}
void yyerror(char * s) {
              fprintf(stderr, "%s\n", s);
            }
      

