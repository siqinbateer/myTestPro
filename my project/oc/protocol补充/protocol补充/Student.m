//
//  Student.m
//  protocol补充
//
//  Created by pcbeta on 15-4-13.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import "Student.h"
#import "Study.h"
#import "Sport.h"


@implementation Student

-(void)read{
    NSLog(@"%@ is read",_name);
}

-(void)swim{
    NSLog(@"%@ is swimming",_name);
}
@end
