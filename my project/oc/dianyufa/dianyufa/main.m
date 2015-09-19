//
//  main.m
//  dianyufa
//
//  Created by pcbeta on 15-4-7.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] init];
        p.age = 24;
        p.name = "fdfdf";
        
        NSLog(@"%s  %d",p.name,p.age);
    }
    return 0;
}
