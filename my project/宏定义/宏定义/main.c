//
//  main.c
//  宏定义
//
//  Created by pcbeta on 15-4-1.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#include <stdio.h>

void test(){

    int b = 0;
    static int c = 0;
    b++;
    c++;
    printf("b=%d,c=%d\n",b,c);
}

int main(int argc, const char * argv[]) {
    
    test();
    test();
    test();
    return 0;
}
