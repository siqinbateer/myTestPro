//
//  Book.h
//  数组排序
//
//  Created by pcbeta on 15-4-16.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject

@property (nonatomic, retain) NSString *name;

+(instancetype) bookWithName:(NSString *)name;
@end
