//
//  main.m
//  NSDate
//
//  Created by pcbeta on 15-4-17.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>

void create()
{
    //获取当前时间
    NSDate *date = [NSDate date];
    date = [NSDate dateWithString:@"1997-12-12"];
    date = [NSDate dateWithTimeIntervalSinceNow:100];//从现在开始往后100秒
    date = [NSDate dateWithTimeIntervalSince1970:2000];//从1970年开始的往后200秒
    date = [NSDate distantFuture];//返回一个随机的遥远未来时间
    date = [NSDate distantPast];//返回一个随机的遥远过去时间
    NSLog(@"%@",date);
}
void use(){
    NSDate *date = [NSDate date];
    NSDate *date2 = [NSDate dateWithString:@"1997-12-12"];
    //获取秒数
    NSTimeInterval inter = [date timeIntervalSince1970];//获取从1970到date的秒数
    inter = [date timeIntervalSinceDate:date2];//获取date和date2之间秒数间隔
    
    //比较两个日期
    
    [date earlierDate:date2];//返回两者的比较早的那个
    [date laterDate:date2];//返回两者比较晚的那个
    
    [date isEqualToDate:date2];//比较两个时间是否相等。
    
    [date compare:date2];//比较两个日期大小
    
 
}

void dateFormat(){
    NSDate *date = [NSDate date];
    
    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    
    format.dateFormat = @"yyy-MM-dd HH:mm:ss";
    
    format.timeZone = [NSTimeZone timeZoneWithName:@"PRC"];
    
    NSString *string  = [format stringFromDate:date];
    
    NSDate *date3 = [format dateFromString:string];
    
    NSLog(@"%@",date3);
    
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        dateFormat();
    }
    return 0;
}
