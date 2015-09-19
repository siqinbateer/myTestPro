//
//  main.m
//  dictionary
//
//  Created by pcbeta on 15-4-16.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>

void create(){
    NSDictionary *dic = [NSDictionary dictionary];//空的字典，是不可变的
    NSDictionary *dic2 = [NSDictionary dictionaryWithObject:@"v" forKey:@"k"];
    NSArray *objs = [NSArray arrayWithObjects:@"v1",@"v2",@"v3", nil];
    NSArray *keys = [NSArray arrayWithObjects:@"k1",@"k2",@"k3", nil];
    NSDictionary *dic3 = [NSDictionary dictionaryWithObjects:objs forKeys:keys];
    NSDictionary *dic4 = [NSDictionary dictionaryWithObjectsAndKeys:@"v1",@"k1",@"v2",@"k2", nil];
    NSDictionary *dic5 = [NSDictionary dictionaryWithDictionary:dic3];
    
    NSLog(@"%@",dic5);
}

void use(){
     NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"v1",@"k1",@"v2",@"k2", nil];
    //NSLog(@"%zi",dic.count);
    NSDictionary *dic2 = [NSDictionary dictionaryWithObjectsAndKeys:@"v1",@"k1",@"v2",@"k2", nil];
    bool res = [dic isEqualToDictionary:dic2];
    //NSLog(@"%i",[dic conformsToProtocol:@protocol(NSObject)]);
    
    NSString *s = [dic objectForKey:@"k2"];
    NSString *path = @"/Users/pcbeta/Desktop/a.xml";
    [dic writeToFile:path atomically:YES];
    NSDictionary *newDic = [NSDictionary dictionaryWithContentsOfFile:path];
    NSLog(@"%@",newDic);
    

}
void  dicuse(){
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"v1",@"k1",@"v2",@"k2", nil];
    
    NSArray *keys = dic.allKeys;
    NSArray *objs = dic.allValues;
    NSLog(@"%@",keys);
    NSString *obj = [dic objectForKey:@"k1"];
    NSLog(@"%@",obj);
    //用多个键来返回多个值。当有个键没有对应的值的时候，就用notFoundMarker所设定的值来代替。
    NSArray *objs2 = [dic objectsForKeys:[NSArray arrayWithObjects:@"k1",@"k2",@"k3", nil] notFoundMarker:@"not-found"];
    NSLog(@"%@",objs2);
    
    
    
}




int main(int argc, const char * argv[]) {
    @autoreleasepool {
        dicuse();
    }
    return 0;
}
