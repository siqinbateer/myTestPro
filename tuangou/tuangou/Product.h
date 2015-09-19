//
//  Product.h
//  tuangou
//
//  Created by pcbeta on 15-9-18.
//  Copyright (c) 2015年 zugatech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject
@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *icon;
@property (nonatomic,copy) NSString *price;
@property (nonatomic,copy) NSString *buyCount;

-(instancetype) initWithDict:(NSDictionary *)dict;
+(instancetype) productWithDict:(NSDictionary *)dict;

+(NSArray *)productArray;



@end
