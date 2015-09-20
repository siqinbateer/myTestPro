//
//  ViewController.m
//  微博 cell
//
//  Created by pcbeta on 15-9-19.
//  Copyright (c) 2015年 zugatech. All rights reserved.
//

#import "ViewController.h"
#import "Weibo.h"
#import "WeiboCell.h"
#import "WeiBoFrame.h"

@interface ViewController ()
//@property (nonatomic,strong) NSMutableArray *weibos;
@property (nonatomic,strong) NSMutableArray *wFrames;
@end

@implementation ViewController

//-(NSMutableArray *)weibos{
//    if (!_weibos) {
//        _weibos = [NSMutableArray arrayWithArray:[Weibo weiboArray]];
//    }
//    
//    return _weibos;
//}

-(NSMutableArray *)wFrames{
    if (!_wFrames) {
        _wFrames = [NSMutableArray arrayWithArray:[WeiBoFrame frameArray]];
        
    }
    return _wFrames;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.rowHeight = 200;
    //对于一个控制器类来说， self.view  就是它对应的view.比如tableviewcontroller的tableview就是他的self.view
}


-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.wFrames.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    WeiboCell *cell = [WeiboCell cellWithTableView:tableView];
   
    cell.weiboFrame = _wFrames[indexPath.row];
    
    return cell;
}





-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    WeiBoFrame *wf = _wFrames[indexPath.row];
    return wf.cellHeight;
}







@end
