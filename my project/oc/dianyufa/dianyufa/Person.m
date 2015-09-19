//
//  Person.m
//  dianyufa
//
//  Created by pcbeta on 15-4-7.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import "Person.h"

@implementation Person

-(int)age{
    NSLog(@"getAge");
    return _age;
}
-(char *)name{
    NSLog(@"getName");
    return _name;
}
-(void)setAge:(int)newAge{
    NSLog(@"setAge");
    _age = newAge;
}
-(void)setName:(char *)newName{
    NSLog(@"setName");
    _name = newName;
}

@end
