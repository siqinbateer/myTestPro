//
//  ButtonListener.m
//  protocol
//
//  Created by pcbeta on 15-4-13.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import "ButtonListener.h"
#import "Button.h"


@implementation ButtonListener 

-(void)onClick:(Button *)btn{
    NSLog(@"%@ 按钮被点击了",btn);
}

@end
