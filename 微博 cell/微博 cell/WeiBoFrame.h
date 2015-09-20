//
//  WeiBoFrame.h
//  微博 cell
//
//  Created by pcbeta on 15-9-20.
//  Copyright (c) 2015年 zugatech. All rights reserved.
//

#define NameLblbFont [UIFont systemFontOfSize:14]
#define TextLblbFont [UIFont systemFontOfSize:15]
#import <UIKit/UIKit.h>

@class Weibo;
@interface WeiBoFrame : NSObject

@property (nonatomic,assign,readonly) CGRect  iconF;
@property (nonatomic,assign,readonly) CGRect  nameF;
@property (nonatomic,assign,readonly) CGRect  vipF;
@property (nonatomic,assign,readonly) CGRect  textF;
@property (nonatomic,assign,readonly) CGRect  pictureF;
@property (nonatomic,assign,readonly) CGFloat   cellHeight;

@property (nonatomic,strong) Weibo *weiBo;

+(NSArray *)frameArray;

@end
