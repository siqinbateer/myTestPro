//
//  main.m
//  foundation
//
//  Created by pcbeta on 15-4-14.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#import <Foundation/Foundation.h>
void test(){
    struct Date{
        int year;
        int month;
        int day;
    };
    
    struct Date d = {2015,1,12};
    
    d.day = 30;
    d.year = 2022;
    NSLog(@"%i-%i-%i",d.year,d.month,d.day);

}
void test2(){
    typedef struct {
        int year;
        int month;
        int day;
    } Date;
    
    Date d = {2012,12,12};
    
    NSLog(@"%i",d.year);
}
void range(){
    NSRange sr ={3,7};
    
    NSRange nsr ;
    nsr.location = 7;
    nsr.length = 3;
    
    NSRange nsr2 = {.location=7,.length=3};
    
    NSRange nsr3 = NSMakeRange(7, 3);
    NSLog(@"%zi",nsr3.location);
    NSString *nss = NSStringFromRange(nsr3);
    NSRange nsr4 = NSRangeFromString(nss);
    NSLog(@"%zi",nsr4.location);
    NSLog(@"%@",nss);
}

void point(){
    NSPoint np;
    np.x = 12.2;
    np.y = 23.3;
    CGPoint cp1=CGPointMake(2.2, 2.2);
    NSPoint cp = NSMakePoint(1.2, 2.2);
    NSString *nss = NSStringFromPoint(cp);
    NSLog(@"%@",nss);
    NSPoint np2 = NSPointFromString(nss);
    NSLog(@"%f",np2.x);
}

void size(){
    NSSize ns;
    ns.height = 12;
    ns.width = 21;
    
    NSSize ns2 = NSMakeSize(12, 23);
    CGSize cs = CGSizeMake(12, 23);
    
    NSString *nss = NSStringFromSize(ns);
    
    NSSize ns3 = NSSizeFromString(nss);
    
}
void rect(){
    NSRect  nr;
    nr.origin.x =20;
    nr.origin.y = 20;
    nr.size.width = 80;
    nr.size.height = 80;
    //快速创建
    NSRect nr2 = NSMakeRect(20, 20, 80, 80);
    CGRect cr = CGRectMake(20, 20, 80, 80);
    
    NSString *nss = NSStringFromRect(cr);
    NSLog(@"%@",nss);
    
    
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        rect();

    }
    return 0;
}
