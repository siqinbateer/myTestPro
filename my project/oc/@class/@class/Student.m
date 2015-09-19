//
//  Student.m
//  @class
//
//  Created by pcbeta on 15-4-12.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import "Student.h"

@implementation Student

//@synthesize book = _book;//如果手动同时实现了set 和get方法了那么@synthesize不会自动生成成员变量，如果set和get缺少一个那么它就会自动生成一个变量。

//-(void)setBook:(Book *)book{
//    if(_book != book){
//       // [_book release]; 和 self.book = nil一样的。
//       // _book = [book retain];
//    }
//}
//-(Book *)book{
//    return _book;
//}
//
//- (void)dealloc
//{
//    self.book = nil;//释放内存
//    //[_book release];
//   // [super dealloc];
//}
+(id)student{
    return [[Student alloc] init]; //autorelease];
}

+(id)studentWithAge:(int)age{
    Student *stu = [self student];//静态方法里self代表类名。
    stu.age = age;
    return stu;
}

@end
