//
//  Student.m
//  NSAarray
//
//  Created by pcbeta on 15-4-15.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import "Student.h"

@implementation Student
+(instancetype)student{
    return [[self alloc] init];
}
-(void)test{
    NSLog(@"test");
}
-(void)test2:(NSString *)print{
    NSLog(@"%@",print);
}
-(void)dealloc{
    NSLog(@"%@对象被销毁了",self);
}
-(NSString *)description{
    return @"nnn";
}
@end
