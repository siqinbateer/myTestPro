//
//  ViewController.m
//  图片轮播000
//
//  Created by pcbeta on 15-9-10.
//  Copyright (c) 2015年 zugatech. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>
{
    NSTimer *_timer;
}
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;

@property (nonatomic,strong) NSMutableArray *pics;
@property (nonatomic,assign) int imgCount;

@end




@implementation ViewController

-(NSMutableArray *)pics{
    NSMutableArray *ps = [NSMutableArray array];
    
    
    return ps;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    _imgCount = 5;
    
    for (int i = 0; i<_imgCount; i++) {
        
        UIImageView *imgV = [[UIImageView alloc] init];
        imgV.frame = CGRectMake(i*self.scrollView.frame.size.width, 0, self.scrollView.frame.size.width, self.scrollView.frame.size.height);
        imgV.image = [UIImage imageNamed:[NSString stringWithFormat:@"img_0%d",i+1]];
        [self.scrollView addSubview:imgV];
        self.scrollView.contentSize = CGSizeMake(CGRectGetMaxX(imgV.frame), 150);
    }
    self.scrollView.showsVerticalScrollIndicator = NO;
    self.scrollView.showsHorizontalScrollIndicator = NO;
    
    self.scrollView.pagingEnabled = YES;
    
    self.pageControl.numberOfPages = _imgCount;
    
    
    _timer = [self addTimer];
    
    
    
}

//控制分液器与图片同步
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    self.pageControl.currentPage = (int)floor((scrollView.contentOffset.x)/scrollView.frame.size.width);
}

//每次用户拖拽就停止定时器，这样就避免了用户拖着拖着放的时候一次走几次的bug
-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [_timer invalidate];
    _timer = nil;//定时器只要听了就不能再次使用了，只能再次创建。
}
-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    _timer = [self addTimer];
}

-(NSTimer *)addTimer{
    NSTimer *tm = [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(nextImg) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:tm forMode:NSRunLoopCommonModes];
    //将定时器放入主线程消息循环，这样就算主线程在干别的事情，定时器也会执行，要不然主线程做别的事情定时器就会停止等待。NSRunLoopCommonModes是优先级.所以使用定时器的时候要小心，别忘了这一步。
    return tm;
}

-(void)nextImg{
    int page = 0;
    if (self.pageControl.currentPage == _imgCount-1) {
        page = 0;
    }else{
        page = self.pageControl.currentPage+1;
    }
    
    CGFloat offsetX = page*self.scrollView.frame.size.width;
//    [UIView animateWithDuration:0.5 animations:^{
//        self.scrollView.contentOffset = CGPointMake(offsetX, 0);
//    }];
    [self.scrollView setContentOffset:CGPointMake(offsetX, 0) animated:YES];
    
}









- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
