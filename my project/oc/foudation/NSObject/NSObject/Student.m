//
//  Student.m
//  NSObject
//
//  Created by pcbeta on 15-4-17.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import "Student.h"

@implementation Student

+(instancetype)student{
    return [[self alloc] init];
}


-(void)test1{
    NSLog(@"test");
}
-(void)test2:(NSString *)a{
    NSLog(@"test2 %@",a);
}

@end
