//
//  Student.h
//  数组排序
//
//  Created by pcbeta on 15-4-16.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Book;
@interface Student : NSObject

@property (nonatomic, retain) NSString *firstName;
@property (nonatomic,retain) NSString *lastName;
@property (nonatomic,retain) Book *book;


+(instancetype)studentWithLastName:(NSString *)lastName withFirstName:(NSString *)firstName;
+(instancetype)studentWithLastName:(NSString *)lastName withFirstName:(NSString *)firstName withBook:(Book *)book;
//必须返回一个NSComparisonResult类型值，而且放入要进行比较的那个对象
-(NSComparisonResult)studentCompare:(id)stu;

-(NSString *)description;
@end
