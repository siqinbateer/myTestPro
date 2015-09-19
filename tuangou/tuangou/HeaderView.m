//
//  HeaderView.m
//  tuangou
//
//  Created by pcbeta on 15-9-18.
//  Copyright (c) 2015年 zugatech. All rights reserved.
//

#import "HeaderView.h"

@interface HeaderView () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;
@property (nonatomic,assign) int imgCount;
@property (nonatomic,strong) NSTimer *timer;
@end

@implementation HeaderView

//将scrollview在哪初始化呢？
//代码创建view的时候肯定会调用init方法，但是在xib创建的时候不会调用。
//用xib创建的时候就用aweakFromNib方法。这个就像是控制器的 viewDidLoad方法。

//这个方法是在所有view从xib创建完成之后调用,相当于viewDidLoad
-(void)awakeFromNib{
    
    self.scrollView.delegate = self;
    CGSize scrollSize = self.scrollView.frame.size;
    self.scrollView.pagingEnabled = YES;
    self.scrollView.showsVerticalScrollIndicator = NO;
    self.scrollView.showsHorizontalScrollIndicator = NO;
    _imgCount = 5;
    for (int i = 0; i<_imgCount; i++) {
        UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(i*scrollSize.width, 0, scrollSize.width, scrollSize.height)];
        imgView.image = [UIImage imageNamed:[NSString stringWithFormat:@"ad_0%i",i]];
        [self.scrollView addSubview:imgView];
        self.scrollView.contentSize = CGSizeMake(CGRectGetMaxX(imgView.frame), 0);
    }
    
    self.pageControl.numberOfPages = _imgCount;
    
    _timer = [self addTimer];
    
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    self.pageControl.currentPage = self.scrollView.contentOffset.x/self.scrollView.frame.size.width;
}


+(instancetype)headerView{
    return [[[NSBundle mainBundle] loadNibNamed:@"HeaderView" owner:nil options:nil] lastObject];
}

-(NSTimer *)addTimer{
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(nextImage) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode: NSRunLoopCommonModes];
    return timer;
}


-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [_timer invalidate];//定时器不能重用，不用了只能销毁，用的时候再创建
    _timer = nil;
}

-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    _timer = [self addTimer];
}


-(void)nextImage{
    int page = 0;
    if (self.pageControl.currentPage == _imgCount-1) {
        self.pageControl.currentPage = 0;
    }else{
        page = self.pageControl.currentPage+1;
    }
    
    
    CGFloat offsetX = page*self.scrollView.frame.size.width;
    [self.scrollView setContentOffset:CGPointMake(offsetX, 0) animated:YES];
}


@end
