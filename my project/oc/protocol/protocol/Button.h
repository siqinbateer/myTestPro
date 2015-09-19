//
//  Button.h
//  protocol
//
//  Created by pcbeta on 15-4-13.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Button;


@protocol ButtonDelegate <NSObject>

-(void)onClick:(Button *)btn;

@end


@interface Button : NSObject

@property (nonatomic,retain) id<ButtonDelegate> delegate;

-(void)click;

@end
