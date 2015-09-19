//
//  main.m
//  构造方法
//
//  Created by pcbeta on 15-4-7.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student *st = [[Student alloc] initWithAge:23 name:"btr"];
        
        NSLog(@"%s  %d",st.name,st.age);
        
    }
    return 0;
}