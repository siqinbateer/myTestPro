//
//  ViewController.m
//  himalaya
//
//  Created by pcbeta on 15-9-9.
//  Copyright (c) 2015年 zugatech. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIButton *changtiao;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%f",self.view.frame.size.height);
    self.scrollView.contentSize = CGSizeMake(0, CGRectGetMaxY(self.changtiao.frame));
    self.scrollView.contentOffset = CGPointMake(0, -64);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
