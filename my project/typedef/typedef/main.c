//
//  main.c
//  typedef
//
//  Created by pcbeta on 15-4-3.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#include <stdio.h>

typedef int Integer;
typedef  unsigned long int ul_int;
typedef char * String;




int main(int argc, const char * argv[]) {
    
    typedef float ff;
    
//    struct Point{
//        float x;
//        float y
//    };
//    struct Point p = {10,10};//每次都写struct
    typedef struct myPoint{
        float x;
        float y;
    } Point;
   // Point p  = {10,10};
    
    typedef struct{
        float x;
        float y;
    } * pp;
    
    
    
    
    
    struct Point{
        float x;
        float y;
    };
    Point point = {10.0f,10.0f};
    pp p = &point;
    p->x;
    p->y;
    
    
    typedef enum {spring,summer} Season;
    
    Season s = spring;
    
    
    
    
    
    
    
    
    
    return 0;
}
