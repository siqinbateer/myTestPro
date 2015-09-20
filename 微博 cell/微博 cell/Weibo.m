//
//  Weibo.m
//  微博 cell
//
//  Created by pcbeta on 15-9-19.
//  Copyright (c) 2015年 zugatech. All rights reserved.
//

#import "Weibo.h"

@implementation Weibo


-(instancetype)initWithDict:(NSDictionary *)dict{
    if (self = [super init]) {
//        self.name = dict[@"name"];
//        self.icon = dict[@"icon"];
//        self.vip = [dict[@"vip"] boolValue];
//        self.text = dict[@"text"];
//        if (dict[@"picture"] != nil) {
//            self.pictrue = dict[@"picture"];
//        }
            //可以使用KVC
        [self setValuesForKeysWithDictionary:dict];
        
    }
    return self;
}

+(instancetype) weiboWithDict:(NSDictionary *)dict{
    return [[self alloc] initWithDict:dict];
}


+(NSArray *)weiboArray{
    NSArray *dicarr = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"statuses.plist" ofType:nil]];
    NSMutableArray *arr = [NSMutableArray array];
    for (NSDictionary *dict in dicarr) {
        [arr addObject:[self weiboWithDict:dict]];
    }
    return arr;
}



@end
