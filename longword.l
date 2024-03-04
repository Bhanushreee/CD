%{
/* Lex code to find the length of the longest word */
int counter = 0;
%}

%%
[a-zA-Z]+ {
    if (yyleng > counter) {
        counter = yyleng;
    }
}
%%

int yywrap() {
    return 1; // Indicate end of input
}

int main() {
    yylex();
    printf("largest: %d\n", counter);
    return 0;
}
