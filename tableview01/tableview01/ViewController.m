//
//  ViewController.m
//  tableview01
//
//  Created by pcbeta on 15-9-12.
//  Copyright (c) 2015年 zugatech. All rights reserved.
//

#import "ViewController.h"
#import "CarModel.h"


@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong) NSMutableArray *resources;

@end

@implementation ViewController

-(NSMutableArray *)resources{
    NSArray *carInfo = [CarModel resourceArry];
    _resources = [NSMutableArray array];
    for (NSDictionary *dict in carInfo) {
        
        CarModel *car = [CarModel carWithDict:dict];
        [_resources addObject:car];
    }
    return _resources;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    //在tableview的plain样式才会titleforheader才会有特别的联动样式，group样式没有这个特效
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.resources.count;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    CarModel *resuorce = (CarModel *) _resources[section];
    
    
    return resuorce.cars.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"car";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    
    CarModel *model = _resources[indexPath.section];
    
    cell.textLabel.text = model.cars[indexPath.row];
    
    
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    CarModel *model = _resources[section];
    return model.title;
}
//
//-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
//    CarModel *model = _resources[section];
//    return model.desc;
//}

//隐藏状态栏
-(BOOL)prefersStatusBarHidden{
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
