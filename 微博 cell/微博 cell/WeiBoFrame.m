//
//  WeiBoFrame.m
//  微博 cell
//
//  Created by pcbeta on 15-9-20.
//  Copyright (c) 2015年 zugatech. All rights reserved.
//
//设置所有frame
#define Padding 10
#define  ICON_HW 40
#define VIP_HW 14
#define PIC_HW 100

#import "WeiBoFrame.h"
#import "Weibo.h"

@implementation WeiBoFrame



+(NSArray *)frameArray{
    NSArray *dictArr = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"statuses.plist" ofType:nil]];
    NSMutableArray *arr = [NSMutableArray array];
    
    for (NSDictionary *dict in dictArr) {
        Weibo *weibo = [Weibo weiboWithDict:dict];
        WeiBoFrame *wf = [[WeiBoFrame alloc] init];
        wf.weiBo = weibo;
        [arr addObject:wf];
    }
    
    return arr;
}







-(CGSize) sizeWithText:(NSString *)text Font:(UIFont *)font Size:(CGSize) size{
    NSDictionary *attr = @{NSFontAttributeName:font};
    //CGSize nameMaxSize = CGSizeMake(MAXFLOAT, MAXFLOAT); //指定这段文字占据的最大size，
    //options暂时用NSStringDrawingUsesLineFragmentOrigin，这个最准，contex通常穿空
    return [text boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:attr context:nil].size;
}

-(void)setWeiBo:(Weibo *)weiBo{
    _weiBo = weiBo;
    
    CGFloat iconX = Padding;
    CGFloat iconY = Padding;
    //readonly属性不能使用点语法，因为没有set方法。
    _iconF = CGRectMake(iconX , iconY, ICON_HW, ICON_HW);
    
    
    CGSize nameSize = [self sizeWithText:weiBo.name Font:TextLblbFont Size:CGSizeMake(MAXFLOAT, MAXFLOAT)];
    CGFloat nameX = CGRectGetMaxX(_iconF)+Padding;
    CGFloat nameY =Padding + (ICON_HW - nameSize.height)/2;
    
    _nameF = CGRectMake(nameX, nameY, nameSize.width, nameSize.height);
    
    
    
    CGFloat vipX = CGRectGetMaxX(_nameF)+Padding;
    CGFloat vipY = nameY;
    _vipF = CGRectMake(vipX, vipY, VIP_HW, VIP_HW);
    
    
    
    CGFloat textX = Padding;
    CGFloat textY = CGRectGetMaxY(_iconF) + Padding;
    CGSize textMaxSize = CGSizeMake(355, MAXFLOAT);
    
    CGSize textSize = [self sizeWithText:weiBo.text Font:TextLblbFont Size:textMaxSize];
    _textF = CGRectMake(textX, textY, textSize.width, textSize.height);
    _cellHeight = 0;
    
    if (self.weiBo.picture) {
        CGFloat pictureX = Padding;
        CGFloat pictureY = CGRectGetMaxY(_textF)+Padding;
        _pictureF = CGRectMake(pictureX, pictureY, PIC_HW, PIC_HW);
        _cellHeight = CGRectGetMaxY(_pictureF)+Padding;
    }else{
        _cellHeight = CGRectGetMaxY(_textF)+Padding;
    }
    
    
}


@end
