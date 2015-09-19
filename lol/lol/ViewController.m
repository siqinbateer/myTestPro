//
//  ViewController.m
//  lol
//
//  Created by pcbeta on 15-9-17.
//  Copyright (c) 2015年 zugatech. All rights reserved.
//

#import "ViewController.h"
#import "Hero.h"
@interface ViewController () <UITableViewDelegate,UITableViewDataSource,UIAlertViewDelegate>
{
    NSIndexPath *_selectIndexPath;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong) NSMutableArray *heros;
@end

@implementation ViewController

-(NSMutableArray *)heros{
    if (_heros == nil) {
        _heros = [NSMutableArray array];
        NSArray *arr = [Hero heroArray];
        for (NSDictionary *dict in arr) {
            Hero *hero = [Hero heroWithDict:dict];
            [_heros addObject:hero];
        }
    }
    return _heros;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource =self;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    self.tableView.separatorColor = [UIColor redColor];
    //可以放广告的地方
    self.tableView.tableHeaderView = [UIButton buttonWithType:UIButtonTypeContactAdd];
    //可以放加载更多
    self.tableView.tableFooterView = [[UISwitch alloc] init];
}

-(BOOL)prefersStatusBarHidden{
    return YES;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.heros.count;
}



-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellID = @"hero";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    }
    Hero *hero = _heros[indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//    cell.accessoryView = [UIButton buttonWithType:UIButtonTypeContactAdd];
    cell.accessoryView = [[UISwitch alloc] init];

    //设置背景 设置背景相关要用backgroundview，不用backgroundcolor  ，
    
    
    
    
//    UIImageView *view = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"1371093644361"]];
//    cell.backgroundView = view;
    
    //设置被选背景
    UIView *bgView2 = [[UIView alloc] init];
    bgView2.backgroundColor = [UIColor redColor];
    cell.selectedBackgroundView = bgView2;
    
    
    cell.imageView.image = [UIImage imageNamed:hero.icon];
    cell.textLabel.text = hero.name;
    cell.detailTextLabel.text = hero.intro;
    return cell;
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
}



-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    Hero *cur = _heros[indexPath.row];
    _selectIndexPath = indexPath;
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"修改" message:nil delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    alert.alertViewStyle = UIAlertViewStylePlainTextInput;
    [alert textFieldAtIndex:0].text = cur.name;
    [alert show];
}

//-(void)willPresentAlertView:(UIAlertView *)alertView{
//    [alertView textFieldAtIndex:0].text = @"dadada";
//}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex == 0) return;
    
    [_heros[_selectIndexPath.row] setName:[alertView textFieldAtIndex:0].text];
    
//    [self.tableView reloadData];//刷新全部数据
    [self.tableView reloadRowsAtIndexPaths:@[_selectIndexPath] withRowAnimation:UITableViewRowAnimationLeft];
    
}























@end
