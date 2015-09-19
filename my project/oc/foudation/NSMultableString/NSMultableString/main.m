//
//  main.m
//  NSMultableString
//
//  Created by pcbeta on 15-4-15.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>

void mutableStringCreate(){
    NSMutableString *str  = [NSMutableString stringWithCapacity:10];
    //初始化NSMutableString
    [str setString:@"123"];
    //追加字符串
    [str appendString:@"345"];
    //追加格式化字符串
    [str appendFormat:@"%i",678];
    
    NSRange range = [str rangeOfString:@"345"];
    [str replaceCharactersInRange:range withString:@"btr"];
    
    [str insertString:@"siqin" atIndex:2];
    
    NSRange range2 = [str rangeOfString:@"67"];
    [str deleteCharactersInRange:range2];
    
    NSLog(@"%@",str);
  
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        mutableStringCreate();
    }
    return 0;
}
