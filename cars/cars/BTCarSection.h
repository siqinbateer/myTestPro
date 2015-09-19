//
//  BTCarSection.h
//  cars
//
//  Created by pcbeta on 15-9-17.
//  Copyright (c) 2015年 zugatech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BTCarSection : NSObject

@property (nonatomic,copy) NSString *title;
@property (nonatomic,strong) NSMutableArray *cars;



-(instancetype) initWithTitle:(NSString *)title Cars:(NSArray *)cars;
+(instancetype) sectionWithTitle:(NSString *)title Cars:(NSArray *) cars;
+(NSArray *)sectionArray;
@end
