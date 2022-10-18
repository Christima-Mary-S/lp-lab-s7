%option noyywrap
%{
#include <stdlib.h>
#include <stdio.h>
int charCount=0;
int wordCount=0;
int lineCount=0;
int CapCount=0;
int SmallCount=0;
int digitCount=0;
int spclCount=0;
%}

%%
\n {lineCount++; wordCount++;}
[\t' '] {wordCount++;}
[a-z] {SmallCount++; charCount++;}
[A-Z] {CapCount++; charCount++;}
[0-9] {digitCount++; charCount++;}
[^ A-Za-z0-9] {spclCount++; charCount++;}
%%
int main(void)
{
yyin = fopen("simple.txt","r");
yylex();
printf("The text file contains:\n");
printf("Number of characters: %d\n",charCount);
printf("Number of words: %d\n",wordCount);
printf("Number of lines: %d\n",lineCount);
printf("Number of UpperCase: %d\n",CapCount);
printf("Number of LowerCase: %d\n",SmallCount);
printf("Number of Special Characters: %d\n",spclCount);
printf("Number of Digit Count: %d\n",digitCount);
return 0;
}

