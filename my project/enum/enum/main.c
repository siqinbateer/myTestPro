//
//  main.c
//  enum
//
//  Created by pcbeta on 15-4-3.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    enum Season {spring,summer,autumn,winter};
    enum Season s;
    //printf("%d",s);
    enum Season2 {spring1,summer1=3,autumn1,winter1};
    enum Season2 s2=winter1;
    //printf("%d",s2);
    for (s=spring; s<=winter; s++) {
        printf("%d",s);
    }
    
    
    //    enum Season {spring,summer,autumn,winter} s1=spring;
//    enum {spring,summer,autumn,winter} s2=autumn;
    
    
    return 0;
}
