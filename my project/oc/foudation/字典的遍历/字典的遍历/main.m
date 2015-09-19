//
//  main.m
//  字典的遍历
//
//  Created by pcbeta on 15-4-16.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>

void dicFor(){
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"v1",@"k1",@"v2",@"k2",@"v3",@"k3",@"v4",@"k4", nil];
    for(id key in dic){
        NSString *v = [dic objectForKey:key];
        NSLog(@"%@--%@",key,v);
    }
    
    
}
void dicfor2(){
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"v1",@"k1",@"v2",@"k2",@"v3",@"k3",@"v4",@"k4", nil];
//    NSEnumerator *enumer =  [dic keyEnumerator];
//    NSString *key = nil;
//    while (key = [enumer nextObject]) {
//        NSString *obj  = [dic objectForKey:key];
//        NSLog(@"%@ -- %@",key,obj);
//    }
    NSEnumerator *enumer =  [dic objectEnumerator];
    NSString *obj = nil;
    while (obj = [enumer nextObject]) {
        
        NSLog(@"%@ --",obj);
    }
}


void blockFor(){
  NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"v1",@"k1",@"v2",@"k2",@"v3",@"k3",@"v4",@"k4", nil];
    [dic enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
         NSLog(@"%@ --%@",key,obj);
    }];
    
    NSArray *arr = [dic keysSortedByValueUsingSelector:@selector(compare:)];
    NSLog(@"%@",arr);
    
}





int main(int argc, const char * argv[]) {
    @autoreleasepool {
        blockFor();
    }
    return 0;
}
