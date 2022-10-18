%{
#include<stdio.h>
#include<stdlib.h>
%}
%%
[01]*[0]{3,3}[01]* {printf("Valid");}
(.+) {printf("Invalid");}

%%
int yywrap(void)
{
return 1;
}
int main()
{
printf("Enter a string : ");
yylex();
return 0;
}
