//
//  Student.m
//  构造方法
//
//  Created by pcbeta on 15-4-7.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import "Student.h"

@implementation Student

-(int)age{
    return _age;
}


-(char *)name{
    return _name;
}
-(void)setName:(char *)name{
    _name = name;
}
-(void)setAge:(int)age{
    _age = age;
}

-(id)initWithAge:(int)age name:(char *)name{
    self = [super init];//调用父类的构造方法
    if(self){ //判断父类的构造方法是否为空对象。
        self.age = age;
        self.name=name;
    }
    return self;
}
@end
