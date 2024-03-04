%{
#include <stdio.h>
%}

DIGIT       [0-9]
WORD        [a-zA-Z]+
SPACE       [ \t\n]

%%

{DIGIT}+    { printf("Number: %s\n", yytext); }
{WORD}      { printf("Word: %s\n", yytext); }
{SPACE}     ;  // Ignore spaces, tabs, and newlines

.           { printf("Invalid character: %s\n", yytext); }

%%

int yywrap() {
    return 1; // Indicate that there is no more input
}

int main() {
    printf("Enter a statement:\n");
    yylex();
    return 0;
}
