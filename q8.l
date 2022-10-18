express aa(a|b)*bb
%{
#include<stdio.h>
#include<stdlib.h>
%}
%%
{express} {printf("Valid");}
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
