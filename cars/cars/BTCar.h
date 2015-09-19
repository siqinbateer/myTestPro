//
//  BTCar.h
//  cars
//
//  Created by pcbeta on 15-9-17.
//  Copyright (c) 2015年 zugatech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BTCar : NSObject
@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *icon;

-(instancetype)initWithName:(NSString *)name Icon:(NSString *)icon;
+(instancetype)carWithName:(NSString *)name Icon:(NSString *)icon;


@end
