//
//  main.m
//  oc类
//
//  Created by pcbeta on 15-4-7.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //Student *stu = [Student alloc];
        
        //stu=[stu init];
        
        Student *stu = [[Student alloc] init];
        
        stu.age =22;
        //[stu setAge:23];
        [stu setName:@"dada"];
        
        NSLog(@"%i",[stu age]);
        
        //[stu release];
    }
    return 0;
}
