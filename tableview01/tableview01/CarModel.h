//
//  CarModel.h
//  tableview01
//
//  Created by pcbeta on 15-9-12.
//  Copyright (c) 2015年 zugatech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CarModel : NSObject
@property (nonatomic,strong) NSArray *cars;
@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *desc;

-(instancetype)initWithDict:(NSDictionary *)dict;
+(instancetype)carWithDict:(NSDictionary *)dict;
+(NSArray *)resourceArry;

@end
