%option noyywrap
number [0-9]+
identifier [a-zA-Z]+
%{
    #include <ctype.h>
    int threeDigits=0;
    int numbers=0;
    int aIdentifiers=0;
    int identifiersB=0;
    int identifiers=0;
%}

%%
{number} {
    numbers++;
    
    int n = strlen(yytext);
    
    if (n == 3) {
        threeDigits++;
    }
}
{identifier} {
    identifiers++;
    
    int n = strlen(yytext);
    
    if (yytext[0] == 'a') {
        aIdentifiers++;
    }
    
    if (yytext[0] == 'a') {
        identifiersB++;          
    }
}    
%%
int main(void){
    extern FILE *yyin;
    yyin = fopen("simple1.txt","r");
    yylex();
printf("Number of 3 digit numbers: %d\n",threeDigits);
printf("Total number of numbers: %d\n",numbers);
printf("Number of identifiers starting with a: %d\n",aIdentifiers);
printf("Number of identifiers ending with b: %d\n",identifiersB);
printf("Total number of identifiers: %d\n",identifiers);
return 0;
}

