//
//  BTCar.m
//  cars
//
//  Created by pcbeta on 15-9-17.
//  Copyright (c) 2015年 zugatech. All rights reserved.
//

#import "BTCar.h"

@implementation BTCar


-(instancetype)initWithName:(NSString *)name Icon:(NSString *)icon{
    if (self = [super init]) {
        self.name = name;
        self.icon = icon;
    }
    return self;
}

+(instancetype)carWithName:(NSString *)name Icon:(NSString *)icon{
    return [[self alloc] initWithName:name Icon:icon];
}

@end
