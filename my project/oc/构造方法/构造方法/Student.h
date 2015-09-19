//
//  Student.h
//  构造方法
//
//  Created by pcbeta on 15-4-7.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject{
    int _age;
    char *_name;
}

-(int) age;
-(char *)name;
-(void)setAge:(int)age;
-(void)setName:(char *)name;

//自定义构造方法名最好以init开头。
//构造方法是动态方法
//构造方法返回值是对象所以最好写成id
-(id)initWithAge:(int)age name:(char *)name;


@end
