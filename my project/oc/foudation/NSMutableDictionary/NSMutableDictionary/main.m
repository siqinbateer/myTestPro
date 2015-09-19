//
//  main.m
//  NSMutableDictionary
//
//  Created by pcbeta on 15-4-17.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>

void dicUse(){
    NSMutableDictionary *dic  = [NSMutableDictionary dictionaryWithObject:@"v1" forKey:@"k1"];
    [dic setObject:@"v2" forKey:@"k2"];
    NSLog(@"%@",dic);
    [dic setValue:@"v3" forKey:@"k3"];
    NSLog(@"%@",dic);
    [dic removeObjectForKey:@"k2"];
    NSLog(@"%@",dic);
    [dic removeAllObjects];
        NSLog(@"%@",dic);
    NSMutableDictionary *dic2  = [NSMutableDictionary dictionaryWithObject:@"v1" forKey:@"k1"];
    [dic addEntriesFromDictionary:dic2];
    NSLog(@"%@",dic);
}



void number(){
    NSNumber *num = [NSNumber numberWithInt:10];
    
    NSMutableArray *arr = [NSMutableArray array];
    [arr addObject:num];
    NSLog(@"%@",num);
    int num2 = [num intValue];
    
    NSLog(@"%i",num2);
}

void value(){
    CGPoint point = CGPointMake(10, 10);
    NSValue *value = [NSValue valueWithPoint:point];
    
    CGPoint point2 = [value pointValue];
   
    if(CGPointEqualToPoint(point, point2)){
        NSLog(@"相等");
    }
}

typedef struct{
    int year;
    int month;
    int day;
} Date;

void value2(){
    Date d = {2013,3,12};
    
    char *type = @encode(Date);
    
    NSValue *value =  [NSValue value:&d withObjCType:type];
    
    Date date2;
    
    [value getValue:&date2];
    [value objCType];
    NSLog(@"%i",date2.year);
    
}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        value2();
        NSNull *n = [NSNull null];
        NSArray *arr = [NSArray arrayWithObject:n];
        
    }
    return 0;
}
