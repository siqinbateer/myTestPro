//
//  Button.m
//  protocol
//
//  Created by pcbeta on 15-4-13.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import "Button.h"

@implementation Button

-(void)click{
    if([_delegate respondsToSelector:@selector(onClick:)]){
        [self.delegate onClick:self];
    }else{
        NSLog(@"%@没有被点击",[self class]);
    }
    
    
}

@end
