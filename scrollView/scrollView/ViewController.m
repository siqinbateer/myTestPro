//
//  ViewController.m
//  scrollView
//
//  Created by pcbeta on 15-9-7.
//  Copyright (c) 2015年 zugatech. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
- (IBAction)go:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.scrollView.delegate = self;
    self.scrollView.contentSize = self.imgView.frame.size;
    self.scrollView.bounces = NO;//边界弹簧效果
    self.scrollView.scrollEnabled = YES;
    self.scrollView.contentInset = UIEdgeInsetsMake(10, 20, 50, 100);
    self.scrollView.showsVerticalScrollIndicator = NO;
    // Do any additional setup after loading the view, typically from a nib.
    
    //设置最大和最小缩放比例，要不然缩放无效
    self.scrollView.maximumZoomScale = 2;
    self.scrollView.minimumZoomScale = 0.2;
}


-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return self.imgView;
}

-(void)scrollViewDidZoom:(UIScrollView *)scrollView{
    NSLog(@"dadad");
}

- (void)scrollViewWillBeginZooming:(UIScrollView *)scrollView withView:(UIView *)view {
    NSLog(@"dad");
}












- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)go:(UIButton *)sender {
    
    CGPoint curOffset = self.scrollView.contentOffset;
    curOffset.x +=50;
    curOffset.y +=50;
    [UIView animateWithDuration:1 animations:^{
        self.scrollView.contentOffset = curOffset;
    }];
    
}
@end
