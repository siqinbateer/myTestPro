//
//  main.m
//  NSObject
//
//  Created by pcbeta on 15-4-17.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Person.h"
void test(){
    Student *stu = [Student student];
    Person *per = [Person person];
    BOOL b ;
    //查看一个对象是不是属于这个类或者其子类。
    b = [stu isKindOfClass:[Person class]];
    //检查一个对象是不是属于这个类，但是不属于其子类。比上一个比较严格。
    b = [stu isMemberOfClass:[Student class]];
    //
    b = [stu conformsToProtocol:@protocol(NSObject)];
    
    b = [stu respondsToSelector:@selector(isMemberOfClass:)];
    //间接调用对象的某个方法
    [stu performSelector:@selector(test1)];
    [stu performSelector:@selector(test2:) withObject:@"abc"];
    NSLog(@"%i",b);
    //延迟调用对象的某个方法。
    [stu performSelector:@selector(test2:) withObject:@"aaa" afterDelay:3];
    
    NSLog(@"%i",[stu isEqual:per]);

}


void reflector(){
    NSString *str = @"Person";
    Class class = NSClassFromString(str);
    Person *per =[[class alloc] init];
    
    NSLog(@"%@",per);
    
    NSString *str2 = NSStringFromClass([per class]);
    
    NSLog(@"%@",str2);
}
void reflector2(){
    Student *stu = [Student student];
    
    NSString *meth = @"test1";
    
    SEL sell = NSSelectorFromString(meth);
    
    [stu performSelector:sell];
    
    NSString *sele = NSStringFromSelector(sell);
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        reflector2();
        
    }
    return 0;
}
