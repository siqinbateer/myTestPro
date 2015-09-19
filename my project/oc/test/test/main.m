//
//  main.m
//  test
//
//  Created by pcbeta on 15-4-8.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Man.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *per = [[Person alloc] init];
        [per setName:"btr"];
        [per setAge:23];
        NSLog(@"%d %s",[per age],[per name]);
        per.age = 24;
        per.name = "btr2";
        NSLog(@"%d %s",per.age,per.name);
        Person *per2 = [[Person alloc] initAge:25 withName:"bre3"];
        NSLog(@"%d %s",per2.age,per2.name);
        
        NSLog(@"%@",per);
        
        char *str1 = "btr";//这个是c语言的字符串
        NSString *str2 = @"btr";//这个是oc的字符串。
        [per2 test];
        [Person test2];
        
        Man *m = [Man new];
        
        [m test3];
        NSLog(@"%i",per->_age);
//        [per release];
//        [per2 release];
        
    }
    return 0;
}
