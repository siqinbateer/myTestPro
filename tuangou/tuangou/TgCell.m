//
//  TgCell.m
//  tuangou
//
//  Created by pcbeta on 15-9-18.
//  Copyright (c) 2015年 zugatech. All rights reserved.
//

#import "TgCell.h"
#import "Product.h"
@interface TgCell ()
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UILabel *titleLable;
@property (weak, nonatomic) IBOutlet UILabel *priceLable;
@property (weak, nonatomic) IBOutlet UILabel *buyLable;

@end


@implementation TgCell


-(void)setProduct:(Product *)product{
    _product = product;//不能用self.product因为第一次用的时候product为空
    
    self.imgView.image = [UIImage imageNamed:product.icon];
    self.titleLable.text = product.title;
    self.priceLable.text = [NSString stringWithFormat:@"￥%@",product.price];
    self.buyLable.text = product.buyCount;
    
    
}

//cel的创建方式卸载cell类中，不能放在控制器中。
+(instancetype)cellWithTableView:(UITableView *)tableView{
    static NSString *cellID = @"tuan";
    TgCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"TgCell" owner:nil options:nil][0];
    }
    return cell;
}












- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
