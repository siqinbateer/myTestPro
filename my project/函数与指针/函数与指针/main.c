//
//  main.c
//  函数与指针
//
//  Created by pcbeta on 15-4-1.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#include <stdio.h>

char * test(){
    return "btr";
}

int main(int argc, const char * argv[]) {
    printf("%s",test());
    return 0;
}
