//
//  MyListener.m
//  protocol
//
//  Created by pcbeta on 15-4-13.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import "MyListener.h"
#import "Button.h"


@implementation MyListener
-(void)onClick{
    NSLog(@"点击了绑定mylitener的按钮");
}
-(void)onClick:(Button *)btn{
    NSLog(@"%@被点击了",btn);
}
@end
