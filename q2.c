#include <stdio.h>
#include <string.h>


void stateA(char x[],int i,int len);
void stateB(char x[],int i,int len);
void stateC(char x[],int i,int len);

void stateC(char x[],int i,int len){

if(i == len){
printf(" valid \n");
}else{

if(x[i]=='1'){
i++;
stateC(x,i,len);
}else if(x[i]=='0'){
i++;
stateB(x,i,len);
}else{
printf(" Not Valid \n");}

}
}

void stateB(char x[],int i,int len){
if(x[i] == '1'){
i++;
stateB(x,i,len);
}else if(x[i] == '0'){
i++;
stateC(x,i,len);
}else{
printf(" Not Valid \n");
}
}


void stateA(char x[],int i,int len){
if(x[i]=='1'){
i++;
stateA(x,i,len);
}else if(x[i]=='0'){
i++;
stateB(x,i,len);
}
else{
printf(" Not Valid \n");
}
}


void main(){
int i,len;
i=0;

printf("Enter the length of the string");
scanf("%d",&len);
char x[len];
printf("Enter the string : ");
scanf("%s",x);
if(len >= 2)
stateA(x,i,len);
else
printf("Not Valid \n");
}
