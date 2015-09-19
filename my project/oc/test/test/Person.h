//
//  Person.h
//  test
//
//  Created by pcbeta on 15-4-8.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject{
    
    @public
    int _age;
    
    @protected
    char *_name;
    
    @private
    NSString *surname;
}

-(int)age;
-(char *)name;
-(void)setAge:(int)age;
-(void)setName:(char *)name;
-(id)initAge:(int)age withName:(char *)name;
-(void)test;
+(void)test2;


@end