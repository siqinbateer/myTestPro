//
//  WeiboCell.h
//  微博 cell
//
//  Created by pcbeta on 15-9-19.
//  Copyright (c) 2015年 zugatech. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WeiBoFrame;

@interface WeiboCell : UITableViewCell

@property (nonatomic,strong) WeiBoFrame *weiboFrame;

+(instancetype) cellWithTableView:(UITableView *)tableView;

@end
