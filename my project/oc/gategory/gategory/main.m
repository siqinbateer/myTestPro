//
//  main.m
//  gategory
//
//  Created by pcbeta on 15-4-13.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Student+Test.h"
#import "NSString+JSON.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student *stu = [Student student];
        stu.age = 1;
        [stu test];
        //[stu test1];// 私有方法
        //[stu test3];
        [stu test4];
        //[stu test5];
        
        [NSString JSON];
        NSString *nss = [[NSString alloc]init];
        [nss JSON2];
    }
    return 0;
}
