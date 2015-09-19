//
//  Study.h
//  protocol补充
//
//  Created by pcbeta on 15-4-13.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Study <NSObject>

@required
-(void) read;
@optional
-(void) write;

@end
