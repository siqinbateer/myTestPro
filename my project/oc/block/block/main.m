//
//  main.m
//  block
//
//  Created by pcbeta on 15-4-13.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Button.h"

void test(){
    int (^sum)(int,int) = ^(int a,int b){
        return a+b;
    };
    NSLog(@"%i",sum(10,10));
}


typedef int (^MySum)(int,int);//定义一个block类型，MySum就是block名。
void test2(){
    __block int c = 12;
    MySum sum;//声明block变量
    sum = ^(int a,int b){
        c = 15;//如果外部变量用了__block关键字修饰了，那么block中可以修改这个外部变量
        NSLog(@"%i",c);//默认情况下不加任何修饰就可以读取外部变量
        return a+b;
    };
    
    NSLog(@"%i",sum(12,34));

}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        void (^split)(NSString *,NSString *) = ^(NSString *s1,NSString *s2){
//            NSString *s= [NSString stringWithFormat:@"%@%@",s1,s2];
//            NSLog(@"%@",s);
//        };
//        //NSLog(@"%@",split(@"dadad",@"dadasd"));
//        split(@"dada",@"dada");
        //test2();
        Button *button = [[Button alloc] init];
        button.delegate = ^(Button *btn){
            NSLog(@"%@被点击了",btn);
        };
        
        [button click];
    }
    

    
    
    return 0;
}
