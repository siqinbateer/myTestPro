//
//  FooterView.m
//  tuangou
//
//  Created by pcbeta on 15-9-18.
//  Copyright (c) 2015年 zugatech. All rights reserved.
//

#import "FooterView.h"






@interface FooterView ()
- (IBAction)loadClick;
@property (weak, nonatomic) IBOutlet UIView *loading;
@property (weak, nonatomic) IBOutlet UIButton *loadBtn;

@end

@implementation FooterView

+(instancetype)footerView{
    return [[[NSBundle mainBundle] loadNibNamed:@"FooterView" owner:nil options:nil] lastObject];
}

- (IBAction)loadClick {
    self.loadBtn.hidden = YES;
    self.loading.hidden = NO;
    
    //延时执行
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if ([self.delegate respondsToSelector:@selector(footerViewLoadBtnClicked:)]) {
            [self.delegate footerViewLoadBtnClicked:self];
        }
        self.loadBtn.hidden = NO;
        self.loading.hidden = YES;
    });
    
}
@end
