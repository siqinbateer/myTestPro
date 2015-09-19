//
//  TgCell.h
//  tuangou
//
//  Created by pcbeta on 15-9-18.
//  Copyright (c) 2015年 zugatech. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Product;

@interface TgCell : UITableViewCell
@property (nonatomic,strong) Product *product;

+(instancetype)cellWithTableView:(UITableView *)tableView;

@end
