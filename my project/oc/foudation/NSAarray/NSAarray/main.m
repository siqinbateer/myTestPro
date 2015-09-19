//
//  main.m
//  NSAarray
//
//  Created by pcbeta on 15-4-15.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

#pragma mark 创建数组

void create(){
    //创建一个空的数组，但是不能改变的。
    NSArray *arr = [NSArray array];
    //创建了一个元素的数组
    
    arr = [NSArray arrayWithObject:@"abc"];
    //创建3个元素的数组，最后的nil代表数组结束，不是数组的一个元素。
    arr = [NSArray arrayWithObjects:@"a",@"b",@"c", nil];
    
    arr = [NSArray arrayWithContentsOfFile:@"/Users/pcbeta/Desktop/b.txt"];
    
    NSLog(@"%@",arr);
    
}
void methods(){
    NSArray *arr = [NSArray arrayWithObjects:@"a",@"b",@"c",nil];
    //获取数组长度
    NSLog(@"%zi",[arr count]);
    NSLog(@"%zi",arr.count);
    //查看数组是否包含某个元素
    BOOL b = [arr containsObject:@"a"];
    NSLog(@"%i",b);
    
    //返回最后一个元素
    id obj = [arr lastObject];
    NSLog(@"%@",obj);
    //返回指定索引处的对象
    obj = [arr objectAtIndex:2];
    NSLog(@"%@",obj);
    //返回指定对象的索引
    NSUInteger i = [arr indexOfObject:@"c"];
    NSLog(@"%zi",i);
    
    //返回对象的索引，在指定的范围内查找
    NSRange range = NSMakeRange([arr indexOfObject:@"a"],arr.count);
    i = [arr indexOfObject:@"b" inRange:range];
    NSLog(@"%zi",i);
    
    NSArray *arr2 = [arr arrayByAddingObject:@"e"];
    NSArray *arr3 = [arr arrayByAddingObjectsFromArray:[NSArray arrayWithObjects:@"e",@"f", nil]];
    NSRange range3=NSMakeRange([arr3 indexOfObject:@"c"], [@"abc" length]);
    NSArray *arr4 = [arr3 subarrayWithRange:range3];
    NSLog(@"%@",arr4);
    
    NSString *nss = [arr4 componentsJoinedByString:@"--"];
    NSLog(@"%@",nss);
    //[arr4 writeToFile:@"/Users/pcbeta/Desktop/b.xml" atomically:YES];
    NSArray *arr6 = [NSArray arrayWithContentsOfFile:@"/Users/pcbeta/Desktop/b.xml"];
    NSLog(@"%@",arr6);
}

#pragma mark 数组内存管理


void memery(){
    Student *stu1 = [[Student alloc] init];
    Student *stu2 = [[Student alloc] init];
    Student *stu3 = [[Student alloc] init];
    
    //将一个对象放入NSArray的时候，这个对象的引用技术加1，也就是数组将对他进行一次retain操作。
    NSArray *arr = [[NSArray alloc] initWithObjects: stu1,stu2,stu3,nil];
    
    //[arr release] 当数组被销毁的时候，会对内部的所有元素做一次release操作。即，计数器减1.
    
}



void sendMessage(){
    Student *stu1 = [Student student];
    Student *stu2 = [Student student];
    Student *stu3 = [Student student];
    NSArray *arr = [NSArray arrayWithObjects:stu1,stu2,stu3, nil];
    [arr makeObjectsPerformSelector:@selector(test)];
    [arr makeObjectsPerformSelector:@selector(test2:) withObject:@"abc"];
}

void arrayFor(){
    Student *stu1 = [Student student];
    Student *stu2 = [Student student];
    Student *stu3 = [Student student];
    NSArray *arr = [NSArray arrayWithObjects:stu1,stu2,stu3, nil];
    
    int count = arr.count;
    for (int i=0; i<count; i++) {
        id cur = [arr objectAtIndex:i];
        NSLog(@"%@",cur);
    }
    //使用for in循环，快速遍历
    int i = 0;
    for (id obj in arr) {
        NSLog(@"%i -- %@",i,obj);
        i++;
    }
    
    //使用block来遍历
    [arr enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"%zi -- %@",idx,obj);
        if(1 == idx){
            *stop = YES;
        }
    }];
    
    //使用迭代器遍历
    //首先获取迭代器
    NSEnumerator *enumerator = [arr objectEnumerator];
    NSArray *arr2 = [enumerator allObjects];
    NSLog(@"%@",arr2);
    id obj = nil;
    while (obj = [enumerator nextObject]) {
        NSLog(@"%@",obj);
    }
    NSEnumerator *enumerator2 = [arr reverseObjectEnumerator];
    id obj2 = nil;
    while (obj2 = [enumerator2 nextObject]) {
        NSLog(@"%@",obj2);
    }
    
}

void sort(){

}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        methods();
    }
    return 0;
}
