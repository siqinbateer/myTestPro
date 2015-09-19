//
//  Student.m
//  gategory
//
//  Created by pcbeta on 15-4-13.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import "Student.h"



@implementation Student


-(void)test{
    NSLog(@"test%i",self.age);
}
+(id)student{
    return [[self alloc] init];
}
-(void)test1{
    NSLog(@"test1");
}
@end

//@implementation Student (Test)
//
//- (void)test3 {
//    NSLog(@"test3");
//}
//
//@end