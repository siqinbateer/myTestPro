//
//  main.m
//  nsstring常用方法
//
//  Created by pcbeta on 15-4-14.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>
#pragma mark  -  字符串处理
#pragma mark 字符串大小写
void upLowerCase(){
    NSString *s = @"BaTer";
    NSLog(@"%@",[s uppercaseString]);
    NSLog(@"%@",[s lowercaseString]);
    NSLog(@"%@",[s capitalizedString]);
}
#pragma mark 字符串比较
void compare(){
    //检测恋歌字符串的内容是否相同。相同返回1，否则返回0
    BOOL result = [@"abc" isEqualToString:@"abc"];
    NSLog(@"%i",result);
    
    
    NSComparisonResult result2 = [@"abc" compare:@"Abc"];
    
    if(result2 == NSOrderedSame){
        NSLog(@"大小相同");
    }else if (result2 == NSOrderedDescending){
        NSLog(@"左边大");
    }else if(result2 == NSOrderedAscending){
        NSLog(@"右边大");
    }

    NSComparisonResult result3 = [@"abc" caseInsensitiveCompare:@"ABC"];
    if(result3 == NSOrderedSame){
        NSLog(@"大小相同");
    }


}
#pragma mark  - 字符串处理2
void search(){
    NSString *ns = @"abchheeehhhdeeeff";
    BOOL res = [ns hasPrefix:@"abc"];
    BOOL res2 = [ns hasSuffix:@"def"];
    NSLog(@"%i  %i",res,res2);
    
    NSRange rg2 = NSMakeRange(10,7);
    NSRange rg= [ns rangeOfString:@"eee" options:NSBackwardsSearch range:rg2];
    
    
    NSLog(@"%@",NSStringFromRange(rg));
    
    
}

#pragma mark 字符串截取
void subString(){
    NSString *s = @"si,qin,bat,eer";
    //截取从指定索引开始直到尾部。
    NSLog(@"%@",[s substringFromIndex:5]);
    //截取第一个字符到指定的索引，包括索引
    NSLog(@"%@",[s substringToIndex:5]);
    //截取指定指定位置开始的指定长度的字符串
    NSRange nr = NSMakeRange(5, 3);
    NSLog(@"%@",[s substringWithRange:nr]);
    
    NSArray *na = [s componentsSeparatedByString:@","];
    NSLog(@"%@",na);
    
}
#pragma mark  路径相关
void pathString(){
//    NSMutableArray *nsa = [NSMutableArray array];
//    [nsa addObject:@"user"];
//    [nsa addObject:@"btr"];
//    [nsa addObject:@"DeskTop"];
//    NSString *path = [NSString pathWithComponents:nsa];
//    NSLog(@"%@",path);
//    
//    NSArray *arr = [path pathComponents];
//    NSLog(@"%@",arr);
//    
//    NSLog(@"%i",[@"/root／user／home" isAbsolutePath]);
//    NSLog(@"%@",[@"/root/user" lastPathComponent]);
    NSString *path2 = @"/root／user／home";
    NSLog(@"%@",[path2 stringByDeletingLastPathComponent]);
    NSLog(@"%@",[path2 stringByAppendingPathComponent:@"admin"]);
    
    
}

#pragma mark 扩展名与string
void extension(){

    NSLog(@"%@",[@"/root/home/aa.txt" pathExtension]);
    NSLog(@"%@",[@"/root/home/aa.txt" stringByDeletingPathExtension]);
    NSLog(@"%@",[@"/root/home/aa.txt" stringByAppendingPathExtension:@"cpp"]);
}


#pragma mark  其他
void other(){
    NSLog(@"%zi", [@"abv我的大大" length]);
    unichar c = [@"abc" characterAtIndex:2];
    NSLog(@"%c",c);
    
    NSLog(@"%i",[@"123" intValue]);
    NSLog(@"%f",[@"123" floatValue]);
    NSLog(@"%f",[@"123" doubleValue]);
    NSLog(@"%s",[@"abc" UTF8String]);
    
}

void stringAppend(){
    NSString *s1 = @"siqin";
    NSLog(@"%@",[s1 stringByAppendingString:@"bateer"]);
    NSLog(@"%@",[s1 stringByAppendingFormat:@"%i",12]);
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        stringAppend();
    }
    return 0;
}
