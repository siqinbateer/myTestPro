//
//  main.m
//  protocol补充
//
//  Created by pcbeta on 15-4-13.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Study.h"
#import "Student+Test.h"
#import "Sport.h"

int sum(int a,int b){
    return a+b;
}

void test(){
    
    typedef int (^SumB)(int , int);
    typedef int (*SumP)(int , int);

    SumB sumb = ^(int a,int b){
        return a+b;
    };
    int c1 = sumb(12,34);
    NSLog(@"%i",c1);
    SumP p = sum;
    
    int c = p(23,23);
    NSLog(@"%i",c);
}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        Student *st = [[Student alloc] init];
//        
//        st.name = @"btr";
//        
//        [st read];
//        //[st write];
//        [st sleep];
//        [st swim];
//        
//        if([st conformsToProtocol:@protocol(Study)]){
//            NSLog(@"%@遵守了这个协议",st);
//        }
//        if([st respondsToSelector:@selector(read)]){
//            NSLog(@"%@实现了这个方法",st);
//        }

//        int (^Sum)(int,int) = ^(int a,int b){
//            return a+b;
//        };
//        
//        NSLog(@"%i",Sum(12,123));
        test();
    }
    return 0;
}
