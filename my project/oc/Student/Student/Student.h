//
//  Student.h
//  Student
//
//  Created by pcbeta on 15-4-7.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Student : NSObject{
    int age;
    char *name;
}

-(int)age;
-(char *)name;
-(void)setAge:(int)myage;
-(void)setName:(char *)name;
-(void)setNameAge:(int)age1 :(char *)name1;
-(void):(int)age2 withName:(char *)name2;

@end
