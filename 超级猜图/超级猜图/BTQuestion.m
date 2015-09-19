//
//  BTQuestion.m
//  超级猜图
//
//  Created by pcbeta on 15-9-1.
//  Copyright (c) 2015年 zugatech. All rights reserved.
//

#import "BTQuestion.h"

@implementation BTQuestion

-(instancetype)initWithDict:(NSDictionary *)dict{
    
    if (self == [super init]) {
        self.title = dict[@"title"];
        self.answer = dict[@"answer"];
        self.icon = dict[@"icon"];
        self.optons = dict[@"options"];
    }
    return self;
}

+(instancetype)questionWithDict:(NSDictionary *)dict{
    return [[self alloc] initWithDict:dict];
}


+(NSArray *)questionsDict{
    return [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"questions" ofType:@"plist"]];
}

@end
