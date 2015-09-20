//
//  WeiboCell.m
//  微博 cell
//
//  Created by pcbeta on 15-9-19.
//  Copyright (c) 2015年 zugatech. All rights reserved.
//



#import "WeiboCell.h"
#import "Weibo.h"
#import "WeiBoFrame.h"

@interface WeiboCell ()

@property (nonatomic,weak) UILabel *nameLable;
@property (nonatomic,weak) UILabel *textView;
@property (nonatomic,weak) UIImageView *iconView;
@property (nonatomic,weak) UIImageView *vipView;
@property (nonatomic,weak) UIImageView *pictureView;


@end


@implementation WeiboCell

//在这个方法中设置按照传进来的数据，设置子空间的数据和frame。
-(void)setWeiboFrame:(WeiBoFrame *)weiboFrame{
    _weiboFrame = weiboFrame;
    
    [self settingData];
    
    [self settingFrame];
    
    
}


//设置子空间数据
-(void)settingData{
    Weibo *weibo = self.weiboFrame.weiBo;
    
    self.nameLable.text = weibo.name;
    self.textView.text = weibo.text;
    self.iconView.image = [UIImage imageNamed:weibo.icon];
    
    if (![weibo.vip boolValue]) {
        [_nameLable setTextColor:[UIColor blackColor]];
        _vipView.hidden = YES;//控制一个控件的显示与否的时候  写yes必须写no  不能写一个
    }else{
        [_nameLable setTextColor:[UIColor redColor]];
        _vipView.hidden = NO;
    }
    if (weibo.picture) {
        self.pictureView.hidden = NO;
        self.pictureView.image = [UIImage imageNamed:weibo.picture];
    }else{
       self.pictureView.hidden = YES;
    }
    
}



//设置frame
-(void)settingFrame{
    
    
    _iconView.frame = _weiboFrame.iconF;
    
    
   
    
    _nameLable.frame = _weiboFrame.nameF;
    
    
    
    
    _vipView.frame = _weiboFrame.vipF;
    
   
    
    _textView.frame = _weiboFrame.textF;
    
    
    _pictureView.frame = _weiboFrame.pictureF;
    
    
}

//重写自定义view的 这个方法，将所有可能显示的子空间都加进contentView，但是不设置他们的数据和frame
-(instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]){
        
        
        UILabel *nameLable = [[UILabel alloc] init];
        nameLable.font = NameLblbFont;
      
        [self.contentView addSubview:nameLable];
        self.nameLable = nameLable;
        
         UIImageView *iconView = [[UIImageView alloc] init];
        [self.contentView addSubview:iconView];
        self.iconView = iconView;
        
        UIImageView *vipView = [[UIImageView alloc] init];
        vipView.image = [UIImage imageNamed:@"vip"]; //一些固定不变的view在init中设置，这样性能高
        [self.contentView addSubview:vipView];
        self.vipView = vipView;
        
        UILabel *textView = [[UILabel alloc] init];
        textView.numberOfLines = 0;
        textView.font = TextLblbFont;
        [self.contentView addSubview:textView];
        self.textView = textView;
        
        
            UIImageView *pictureView = [[UIImageView alloc] init];
            [self.contentView addSubview:pictureView];
            self.pictureView = pictureView;
        
        
        
    }
    return self;
}



+(instancetype)cellWithTableView:(UITableView *)tableView{
    static NSString *cellID  = @"weibo";
    WeiboCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if(!cell){
        cell =[[self alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    
    return cell;
}




- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
