//
//  main.m
//  Student
//
//  Created by pcbeta on 15-4-7.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student *stu =[[Student alloc] init];
        
        //[stu setName:"btr"];
        //[stu :243 withName:"btr55335"];
        stu.age = 34;
        stu.name = "dada";
       
        NSLog(@"%d---%s",stu.age,stu.name);
        
       // [stu release];
    }
    return 0;
}
