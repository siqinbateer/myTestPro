//
//  CarModel.m
//  tableview01
//
//  Created by pcbeta on 15-9-12.
//  Copyright (c) 2015年 zugatech. All rights reserved.
//

#import "CarModel.h"

@implementation CarModel


-(instancetype)initWithDict:(NSDictionary *)dict{
    if (self = [super init]) {
        self.title = dict[@"title"];
        self.cars = dict[@"cars"];
        self.desc = dict[@"desc"];
    }
    return self;
}

+(instancetype)carWithDict:(NSDictionary *)dict{
    return [[self alloc] initWithDict:dict];
}

+(NSArray *)resourceArry{
    return [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"cars_simple.plist" ofType:nil]];
    
}

@end
