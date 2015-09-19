//
//  main.c
//  static
//
//  Created by pcbeta on 15-4-2.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#include <stdio.h>

extern int a;//extern 也可以省略，和定义长的一样
void test();
int main(int argc, const char * argv[]) {
    a=10;
    test();
    return 0;
}

void test(){
    printf("a=%d",a);
}

int a;
