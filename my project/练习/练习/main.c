//
//  main.c
//  练习
//
//  Created by pcbeta on 15-4-2.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#include <stdio.h>
#include <string.h>


void swap(char *p1,char *p2){
    int temp;
    temp = *p1;
    *p1 = *p2;
    *p2 = temp;


}

int sumAndSub(int a,int b,int *p){
    *p=a-b;
    return a+b;
}

void sort1(){
    int a[4] = {12,23,43,45};
        for (int i=0;i<(sizeof(a)/sizeof(int)) ;i++ ) {//sizeof(p)/sizeof(int)当传入的参数是指针的时候不能这样取数组长度，因为32位下指针都是4字节不管类型。
        printf("%d\n",*(a+i));
    }
}
void sort2(){
    int a[4] = {12,23,43,45};
    int *p = a;//数组名是个常量指针
    for (;p<a+4 ;p++) {//sizeof(p)/sizeof(int)当传入的参数是指针的时候不能这样取数组长度，因为32位下指针都是4字节不管类型。
        printf("%d\n",*p);
    }
}
void test(int *p){//和写上数组名一样,因为数组名也是指针
    p[0] =23;//指针当作数组用
   // *(p+1)=23;
    
    
}
void test2(int a[]){//和写上数组名一样,因为数组名也是指针
    *(a+1) = 24;
    //a[0] = 24,
    
    
}

void str1(char *p){
    
    for (;*p!='\0'; p++) {
        printf("%c\n",*p);
    }

}
void str2(char s[]){
    
    for (int i=0;i<strlen(s); i++) {
        printf("%c\n",s[i]);
    }
    
}
void str3(char s[]){
    
    for (int i=0;i<strlen(s); i++) {
        printf("%c\n",*(s+i));
    }
    
}
void str4(char *s){
    
    for (;*s!='\0'; s++) {
        printf("%c\n",*s);
    }
    
}


void print(char *s,void (*p)(char *)){
    p(s);
}





int main(int argc, const char * argv[]) {
    char a=12;
    char b=21;
//    printf("a=%d,b=%d\n",a,b);
//    swap(&a,&b);//别忘了是地址 &
//    printf("a=%d,b=%d\n",a,b);

//    int res;
//    printf("sum=%d,sub=%d",sumAndSub(a,b,&res),res);
    
    //sort2();
//    int arr[2] = {21,43};
//    test2(arr);
//    printf("%d",arr[1]);

    char s[]="btr";
//    
//    str4(s);
    
    //print(s, str1);
//    void (*p)(char *);
//    p=str3;
//    p(s);
//    
    return 0;
}
