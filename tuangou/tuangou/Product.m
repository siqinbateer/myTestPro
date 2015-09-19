//
//  Product.m
//  tuangou
//
//  Created by pcbeta on 15-9-18.
//  Copyright (c) 2015年 zugatech. All rights reserved.
//

#import "Product.h"

@implementation Product

-(instancetype)initWithDict:(NSDictionary *)dict{
    if (self = [super init]) {
        self.title = dict[@"title"];
        self.icon = dict[@"icon"];
        self.buyCount = dict[@"buyCount"];
        self.price = dict[@"price"];
    }
    return self;
}

+(instancetype)productWithDict:(NSDictionary *)dict{
    return [[self alloc] initWithDict:dict];
}


+(NSArray *)productArray{
    NSMutableArray *arr = [NSMutableArray array];
    NSArray *dictArr = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"tgs.plist" ofType:nil]];
    for (NSDictionary *dict in dictArr) {
        [arr addObject:[self productWithDict:dict]];
    }
    return arr;
}


@end
