//
//  Book.m
//  数组排序
//
//  Created by pcbeta on 15-4-16.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import "Book.h"

@implementation Book

+(instancetype)bookWithName:(NSString *)name{
    Book *b = [[Book alloc] init];
    b.name = name;
    return b;
}

@end
