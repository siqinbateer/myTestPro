//
//  Button.h
//  block
//
//  Created by pcbeta on 15-4-13.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Button;

typedef void (^ButtonBlock) (Button *);

@interface Button : NSObject

@property (nonatomic,assign) ButtonBlock delegate;

-(void)click;

@end
