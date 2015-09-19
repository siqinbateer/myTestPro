//
//  main.m
//  NSMutableArray
//
//  Created by pcbeta on 15-4-16.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>

void create(){
    NSMutableArray *arr = [NSMutableArray arrayWithObject:@"1"];
    [arr addObject:@"2"];
    NSArray *arr2 = [NSArray arrayWithObject:@"3"];
    [arr addObjectsFromArray:arr2];
    
    [arr removeObject:@"2"];
    [arr removeLastObject];
    
    [arr insertObject:@"4" atIndex:1];
    
    [arr replaceObjectAtIndex:1 withObject:@"2"];
    
    NSLog(@"%@",arr);
    
}
void sort(){
    NSMutableArray *marr = [NSMutableArray arrayWithObjects:@"1",@"3",@"2",@"4", nil];
    [marr sortUsingSelector:@selector(compare:)];
    
    NSLog(@"%@",marr);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        sort();
    }
    return 0;
}
