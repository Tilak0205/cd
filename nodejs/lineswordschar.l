%{
int l = 0,w = 0,c = 0,s = 0, t = 0;
%}

%%

\t {t++;}
([ ])+ {s++;}
\n {l++;}
[a-zA-Z0-9]+ {w++;c = c+yyleng;}
. {c++;}
%%

int yywrap(){};

int main()
//
{
yylex();
printf("lines : %d words: %d characters : %d spaces : %d  tabs : %d",l,w,c,s,t);
return 0;
}
