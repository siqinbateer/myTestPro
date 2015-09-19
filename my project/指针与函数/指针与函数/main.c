//
//  main.c
//  指针与函数
//
//  Created by pcbeta on 15-4-1.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#include <stdio.h>


int sum(int a,int b){
    return a+b;
}
int mul(int a,int b){
    return a*b;
}
int count(int a,int b,int (*p)(int,int)){
    return p(a,b);//(*p)(a,b)
}
int main(int argc, const char * argv[]) {
    int a=23;
    int b=12;
    int c;
    c = count(a,b, sum);
    c=count(a, b, mul);
    printf("%d",c);
    return 0;
}
