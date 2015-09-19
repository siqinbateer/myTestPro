//
//  Student.m
//  数组排序
//
//  Created by pcbeta on 15-4-16.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import "Student.h"
#import "Book.h"
@implementation Student



+(instancetype)studentWithLastName:(NSString *)lastName withFirstName:(NSString *)firstName{
    Student *stu = [[Student alloc] init];
    stu.firstName = firstName;
    stu.lastName = lastName;
    
    return stu;
}
+(instancetype)studentWithLastName:(NSString *)lastName withFirstName:(NSString *)firstName withBook:(Book *)book{
    Student *stu = [Student studentWithLastName:lastName withFirstName:firstName];
    stu.book = book;
    return stu;
}


-(NSComparisonResult)studentCompare:(Student *)stu{
    //先比较姓然后在比较名
    NSComparisonResult result = [self.lastName compare:stu.lastName];
    
    if(result == NSOrderedSame){
        result = [self.firstName compare:stu.firstName];
    }
    
    return result;
}

-(NSString *)description{
    return [NSString stringWithFormat:@"[%@ %@ --%@]",self.firstName,self.lastName,self.book.name];
}

@end
