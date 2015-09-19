//
//  main.m
//  protocol
//
//  Created by pcbeta on 15-4-13.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Button.h"
#import "ButtonListener.h"
#import "MyListener.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Button *button = [[Button alloc] init];
        
        ButtonListener *bl = [[ButtonListener alloc] init];
        button.delegate = bl;
        
        [button click];
        
        MyListener  *ml = [[MyListener alloc] init];
        
        button.delegate = ml;
        
        [button click];
        
        
    }
    return 0;
}
