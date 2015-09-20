//
//  Weibo.h
//  微博 cell
//
//  Created by pcbeta on 15-9-19.
//  Copyright (c) 2015年 zugatech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Weibo : NSObject

@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *text;
@property (nonatomic,copy) NSString *icon;
//KVC能将int转换成bool
@property (nonatomic,assign) NSNumber *vip;
@property (nonatomic,copy) NSString *picture;

-(instancetype) initWithDict:(NSDictionary *)dict;
+(instancetype) weiboWithDict:(NSDictionary *)dict;
+(NSArray *)weiboArray;

@end
