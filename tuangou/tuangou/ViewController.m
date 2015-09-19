//
//  ViewController.m
//  tuangou
//
//  Created by pcbeta on 15-9-18.
//  Copyright (c) 2015年 zugatech. All rights reserved.
//

#import "ViewController.h"
#import "Product.h"
#import "TgCell.h"
#import "FooterView.h"
#import "HeaderView.h"

@interface ViewController () <UITableViewDataSource,footerViewDelegate>
@property (nonatomic,strong) NSMutableArray *tgs;
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation ViewController

-(NSMutableArray *)tgs{
    if (!_tgs) {
        _tgs = [NSMutableArray arrayWithArray:[Product productArray]];
    }
    return _tgs;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.rowHeight = 80;
    
    
    
//    UIButton *footerBTN = [UIButton buttonWithType:UIButtonTypeCustom];
//    footerBTN.frame = CGRectMake(0, 0, 0, 44);//footerview的位置和宽度不能设置，footerview的宽度是和tableview宽度一样的。只能设置高度。footerview的宽度永远是填充整个tableview宽度的。
//    [footerBTN setTitle:@"加载更多..." forState:UIControlStateNormal];
//    footerBTN.backgroundColor = [UIColor orangeColor];
//    self.tableView.tableFooterView = footerBTN;

    
    //自定义加载按钮是通过嵌套来完成的。
//    UINib *nib = [UINib nibWithNibName:@"FooterView" bundle:nil];
//    UIView *footer = [[nib instantiateWithOwner:nil options:nil] lastObject];
//    self.tableView.tableFooterView = footer;
    FooterView *footerView = [FooterView footerView];
    footerView.delegate = self;
    self.tableView.tableFooterView = footerView;
    
    
    self.tableView.tableHeaderView = [HeaderView headerView];
    
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.tgs.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //自定义cell的创建方式要写在对应的cell类中
    TgCell *cell = [TgCell cellWithTableView:tableView];
    
    cell.product = _tgs[indexPath.row];
    return cell;
}





-(void)loadMoreData{
    Product *pro = [[Product alloc] init];
    pro.icon = @"ad_00";
    pro.title = @"新加团购";
    pro.price = @"123";
    pro.buyCount = @"1203";
    [_tgs addObject:pro];
    
    [self.tableView reloadData];
}




-(void)footerViewLoadBtnClicked:(FooterView *)footerView{
    [self loadMoreData];
}







@end
