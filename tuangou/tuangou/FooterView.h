//
//  FooterView.h
//  tuangou
//
//  Created by pcbeta on 15-9-18.
//  Copyright (c) 2015年 zugatech. All rights reserved.
//

#import <UIKit/UIKit.h>


@class FooterView;
@protocol footerViewDelegate <NSObject>

@optional
-(void) footerViewLoadBtnClicked:(FooterView *)footerView;
@end


@interface FooterView : UIView
@property (nonatomic,weak) id<footerViewDelegate> delegate;

+(instancetype)footerView;

@end




