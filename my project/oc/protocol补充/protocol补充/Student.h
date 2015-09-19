//
//  Student.h
//  protocol补充
//
//  Created by pcbeta on 15-4-13.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol Study;
@protocol Sport;


@interface Student : NSObject <Study,Sport>

@property (nonatomic,retain) NSString *name;
@property (nonatomic,assign) int age;

@end
