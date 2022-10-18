#include <stdio.h>
#include <string.h>


void state0(char x[],int i,int len);
void state1(char x[],int i,int len);
void state2(char x[],int i,int len);

void state2(char x[],int i,int len){

if(i == len){
printf(" valid \n");
}else{

if(x[i]=='1'){
i++;
state2(x,i,len);
}else if(x[i]=='0'){
i++;
state1(x,i,len);
}else{
printf(" Not Valid \n");}

}
}

void state1(char x[],int i,int len){
if(x[i] == '0'){
i++;
state1(x,i,len);
}else if(x[i] == '1'){
i++;

state2(x,i,len);
}else{
printf(" Not Valid \n");
}
}


void state0(char x[],int i,int len){
if(x[i]=='0'){
i++;
state1(x,i,len);
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
state0(x,i,len);
}
