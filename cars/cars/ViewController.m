//
//  ViewController.m
//  cars
//
//  Created by pcbeta on 15-9-17.
//  Copyright (c) 2015年 zugatech. All rights reserved.
//

#import "ViewController.h"
#import "BTCarSection.h"
#import "BTCar.h"



@interface ViewController () <UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong) NSMutableArray *sections;
@end

@implementation ViewController

-(NSMutableArray *)sections{
    if (!_sections) {
        _sections = [[BTCarSection sectionArray] mutableCopy];
    }
    return _sections;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.rowHeight = 60;
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return self.sections.count;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    BTCarSection *se = self.sections[section];
    
    return se.cars.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellID = @"car";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellID];
    }
    
    
    
    BTCarSection *sec = _sections[indexPath.section];
    BTCar *car = sec.cars[indexPath.row];
    cell.imageView.image = [UIImage imageNamed:car.icon];
    cell.textLabel.text = car.name;
    
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    BTCarSection *sect = _sections[section];
    return sect.title;
}


-(BOOL)prefersStatusBarHidden{
    return YES;
}


-(NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView{
//    NSMutableArray *indexs = [NSMutableArray array];
//    for (BTCarSection *section in _sections) {
//        [indexs addObject:section.title];
//    }
//    return indexs;
    //kvc用在一个对象那么他可以操作一个属性，但是用在数组上那么他会将数组元素上找对应属性，然后封装成一个数组返回。
    return [self.sections valueForKeyPath:@"title"];
    
}









@end
