//
//  main.m
//  NSString
//
//  Created by pcbeta on 15-4-14.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>

void creatString(){
    // char *s = "bater";
    NSString *str = @"bater";//这种方法创建的不用管理内存
    
    NSString *str1 = [[NSString alloc] init];
    str1 = @"btr";
    
    NSString *str2 = [[NSString alloc] initWithString:@"bateer"];
    //用c字符串初始化。在数据库操作中经常用
    NSString *str3 = [[NSString alloc] initWithUTF8String:"bater"];
    NSString *str4 = [[NSString alloc] initWithCString:"btr" encoding:NSUTF8StringEncoding];
    
    NSString *str5=[[NSString alloc] initWithFormat:@"age is %i,height is %15.3f",23,1.76];
    
    NSString *str6 = [NSString stringWithString:@"bater"];
    NSString *str7 = [NSString stringWithUTF8String:"bater"];
    NSString *str8 = [NSString stringWithCString:"bater" encoding:NSUTF8StringEncoding];
    NSString *str9 = [NSString stringWithFormat:@"bater is %i",23];
    
    //unichar自负转换成字符串。
    unichar a[] = {'a','d','c','\0'};
    NSString *str10 = [NSString stringWithCharacters:a length:2];
    
    //读取文件中字符串
    NSError *error;
    
    NSString *path = @"/Users/pcbeta/Desktop/aa.txt";
    NSString *str11 = [NSString stringWithContentsOfFile:path encoding:CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000) error:&error];
    
    if(error){
        NSLog(@"文件读取失败！%@",error);
    }else{
        NSLog(@"@%",str11);
    }
  
    
    NSError *error2;
    
    NSURL *url = [NSURL URLWithString:@"http://www.baidu.com"];
    NSString *str12 = [NSString stringWithContentsOfURL:url encoding: NSUTF8StringEncoding error:&error2];
    if(error2){
        NSLog(@"读取出错了");
    }else{
        NSLog(@"%@",str12);
    }
    
    
}

void test2(NSString **p){//**p传一个指针的地址，不是普通变量的地址。
    *p = @"qin";
}

int sumAndMul(int a,int b,int *mul){
    *mul = a*b;
    return a+b;
    
}

void  stringExport(){
    
    NSString *s = @"bagator把啊";
    //文件不存在就会创建一个文件，
    NSString *url = @"/Users/pcbeta/b.txt";
    
    NSError *error;
    //atomically代表是否原子操作，原子操作是安全的，当写入途中出错就会删除写入的内容，原子写入是将字符串先写入一个临时文件，然后将临时文件拷贝到目标文件，当初错时候删除临时文件，不会影响目标文件。当非原子时候是将字符串直接写入目标文件。
    [s writeToFile:url atomically:YES encoding:NSUTF8StringEncoding error:&error];
    if(error){
        NSLog(@"读取出错 %@",[error localizedDescription]);
        //文件或编码出错都会报错
    }else{
        NSLog(@"写入成功");
    }
}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
       // creatString();
//        NSString *str = @"btr";
//        test2(&str);
//        NSLog(@"%@",str);
//        int a = 10;
//        int b = 20;
//        int c;
        stringExport();
        //NSLog(@"%i----%i",sumAndMul(a,b,&c),c);
        
    }
    return 0;
}
