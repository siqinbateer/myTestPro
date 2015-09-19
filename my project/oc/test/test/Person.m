//
//  Person.m
//  test
//
//  Created by pcbeta on 15-4-8.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import "Person.h"

@implementation Person

-(int)age{
    return _age;
}
-(char *)name{
    return _name;
}
-(void)setAge:(int)age{
    _age = age;
}
-(void)setName:(char *)name{
    _name=name;
}
-(id)initAge:(int)age withName:(char *)name{
    self = [super init];
    
    if(self){
        self.age = age;
        self.name = name;
    }
    return self;
}
-(NSString *)description{
    NSString *str = [NSString stringWithFormat:@"name is %s and age is %d",self.name,self.age];
    return str;
}

-(void)test{
    int age = self.age;
    NSLog(@"%d dada",age);
}

+(void)test2{
    [[[self alloc] init] age];
}


@end
