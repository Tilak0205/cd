%{
int c = 0;
int v = 0;

%}

%%
[aeiouAEIOU] {v++;}
[a-zA-Z] {c++;}
%%

int yywrap(){};
int main()
{
printf("Enter the string :\t");
yylex();
printf("#vowels : %d \t #consonants : %d",v,c);
return 0;
}
