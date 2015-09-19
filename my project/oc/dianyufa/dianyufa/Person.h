//
//  Person.h
//  dianyufa
//
//  Created by pcbeta on 15-4-7.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject{
    int _age;
    char *_name;//成员变量用下划线。
}

-(int)age;//get函数用成员变量名
-(char *)name;
-(void)setAge:(int)newAge;
-(void)setName:(char *)newName;

@end
