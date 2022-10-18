digit    [0-9]
letter   [A-Za-z]
%{  
    #include<string.h>
    int count = 0;
%}
%%
    /* match identifier */
{letter}({letter}|{digit})* count++;
"\n" {printf("number of identifiers + %d\n", count); count = 0;)
%%
int main(void) {
    yylex();
    return 0;
}
