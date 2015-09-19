//
//  Student.h
//  @class
//
//  Created by pcbeta on 15-4-12.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Book;

@interface Student : NSObject

@property (nonatomic,assign) int age;
@property (nonatomic,retain) Book *book;

//-(void)setBook:(Book *)book;
//-(Book *)book;
+(id)student;
+(id)studentWithAge:(int) age;
@end
