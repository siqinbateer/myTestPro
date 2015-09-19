//
//  main.m
//  数组排序
//
//  Created by pcbeta on 15-4-16.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Book.h"


#pragma mark  数组排序1
void arraySort1(){
    NSArray *arr1 = [NSArray arrayWithObjects:@"1",@"3",@"4",@"2", nil];
    //通过对象的指定方法来比较，数组中的对象都是字符串，所以使用字符串的compare：方法进行排序
    NSArray *arr2 = [arr1 sortedArrayUsingSelector:@selector(compare:)];
    NSLog(@"%@",arr2);

}

#pragma mark 数组排序2
//使用自定义比较函数来比较
void arraySort2(){
    
    Student *stu1 = [Student studentWithLastName:@"Li" withFirstName:@"Siqin"];
    Student *stu2 = [Student studentWithLastName:@"Xi" withFirstName:@"bater"];
    Student *stu3 = [Student studentWithLastName:@"Zi" withFirstName:@"mandula"];
    Student *stu4 = [Student studentWithLastName:@"Li" withFirstName:@"wuri"];
    NSArray *arr1 = [NSArray arrayWithObjects:stu1,stu2,stu3,stu4, nil];
    
    NSArray *arr2 = [arr1 sortedArrayUsingSelector:@selector(studentCompare:)];
    NSLog(@"%@",arr2);
    
}
//使用block来排序
void arraySort3(){
    Student *stu1 = [Student studentWithLastName:@"Li" withFirstName:@"Siqin"];
    Student *stu2 = [Student studentWithLastName:@"Xi" withFirstName:@"bater"];
    Student *stu3 = [Student studentWithLastName:@"Zi" withFirstName:@"mandula"];
    Student *stu4 = [Student studentWithLastName:@"Li" withFirstName:@"wuri"];
    NSArray *arr1 = [NSArray arrayWithObjects:stu1,stu2,stu3,stu4, nil];
    
    NSArray *arr2 = [arr1 sortedArrayUsingComparator:^NSComparisonResult(Student* obj1, Student* obj2) {
        NSComparisonResult result = [obj1.lastName compare:obj2.lastName];
        if(result == NSOrderedSame){
            result = [obj1.firstName compare:obj2.firstName];
        }
        return result;
    }];
    NSLog(@"%@",arr2);
}
//使用排序描述器
void arraySort4(){
    Student *stu1 = [Student studentWithLastName:@"Li" withFirstName:@"Siqin" withBook:[Book bookWithName:@"book1"]];
    Student *stu2 = [Student studentWithLastName:@"Xi" withFirstName:@"bater" withBook:[Book bookWithName:@"book2"]];
    Student *stu3 = [Student studentWithLastName:@"Zi" withFirstName:@"mandula"  withBook:[Book bookWithName:@"book3"]];
    Student *stu4 = [Student studentWithLastName:@"Li" withFirstName:@"wuri" withBook:[Book bookWithName:@"book1"]];
    NSArray *arr1 = [NSArray arrayWithObjects:stu1,stu2,stu3,stu4, nil];
    //先通过书名，然后名，最后名。
    NSSortDescriptor *des1 = [NSSortDescriptor sortDescriptorWithKey:@"book.name" ascending:YES];
    NSSortDescriptor *des2 = [NSSortDescriptor sortDescriptorWithKey:@"firstName" ascending:YES];
    NSSortDescriptor *des3 = [NSSortDescriptor sortDescriptorWithKey:@"lastName" ascending:YES];
    //描述器数组中的元素顺序就是进行排序的顺序。
    NSArray *dess = [NSArray arrayWithObjects:des1,des2,des3, nil];
    
    
    NSArray *arr2 = [arr1 sortedArrayUsingDescriptors:dess];
    NSLog(@"%@",arr2);
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        arraySort4();
    }
    return 0;
}
