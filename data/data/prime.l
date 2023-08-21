%{
#include <stdio.h>

int is_prime(int num) {
    if (num <= 1) return 0;
    if (num == 2) return 1;
    if (num % 2 == 0) return 0;
    
    for (int i = 3; i * i <= num; i += 2) {
        if (num % i == 0) return 0;
    }
    return 1;
}
%}

DIGIT [0-9]
NEWLINE [\n]

%%

{DIGIT}+ {
    int num = atoi(yytext);
    if (is_prime(num)) {
        printf("%d is a prime number.\n", num);
    }
}

{DIGIT}+{NEWLINE} {
    int num = atoi(yytext);
    if (is_prime(num)) {
        printf("%d is a prime number.\n", num);
    }
}

. ;

%%

int main() {
    yylex();
    return 0;
}
