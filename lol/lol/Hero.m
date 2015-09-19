//
//  Hero.m
//  lol
//
//  Created by pcbeta on 15-9-17.
//  Copyright (c) 2015年 zugatech. All rights reserved.
//

#import "Hero.h"

@implementation Hero

-(instancetype)initWithDict:(NSDictionary *)dict{
    if (self = [super init]) {
        self.name = dict[@"name"];
        self.intro = dict[@"intro"];
        self.icon = dict[@"icon"];
    }
    return self;
}

+(instancetype)heroWithDict:(NSDictionary *)dict{
    return [[self alloc] initWithDict:dict];
}

+(NSArray *)heroArray{
    return [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"heros.plist" ofType:nil]];
}


@end
