//
//  BTCarSection.m
//  cars
//
//  Created by pcbeta on 15-9-17.
//  Copyright (c) 2015年 zugatech. All rights reserved.
//

#import "BTCarSection.h"
#import "BTCar.h"


@implementation BTCarSection


-(instancetype) initWithTitle:(NSString *)title Cars:(NSArray *)cars{
    if (self = [super init]) {
        self.title = title;
        self.cars = [NSMutableArray array];
        for (NSDictionary *dict in cars) {
            BTCar *car = [BTCar carWithName:dict[@"name"] Icon:dict[@"icon"]];
            [self.cars addObject:car];
        }
    }
    return self;
}

+(instancetype) sectionWithTitle:(NSString *)title Cars:(NSArray *)cars{
    return [[self alloc] initWithTitle:title Cars:cars];
}

+(NSArray *)sectionArray{
    NSArray *sections = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"cars_total.plist" ofType:nil]];
    NSMutableArray *arr =  [NSMutableArray array];
    for (NSDictionary *dict in sections) {
        BTCarSection *section = [self sectionWithTitle:dict[@"title"] Cars:dict[@"cars"]];
        [arr addObject:section];
    }
    return arr;
}





@end
