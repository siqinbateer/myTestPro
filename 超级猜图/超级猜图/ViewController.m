//
//  ViewController.m
//  超级猜图
//
//  Created by pcbeta on 15-9-1.
//  Copyright (c) 2015年 zugatech. All rights reserved.
//

#import "ViewController.h"
#import "BTQuestion.h"


@interface ViewController ()
{
    CGRect _btnFrame;
    BOOL _iconFlag;
    
}
//所有题目
@property (nonatomic,strong) NSMutableArray *quetions;
@property (nonatomic,assign) int  index;//当前题目的索引
@property (weak, nonatomic) IBOutlet UILabel *questionNumber;
@property (weak, nonatomic) IBOutlet UILabel *questionContent;
@property (weak, nonatomic) IBOutlet UIButton *iconView;
@property (weak, nonatomic) IBOutlet UIButton *coinView;
@property (weak, nonatomic) IBOutlet UIButton *nextBtn;
@property (weak, nonatomic) IBOutlet UIView *optionView;
@property (nonatomic,assign) BOOL isTiped;
//@property (nonatomic,strong) NSMutableDictionary *answerDict;
//相当于索引，是个weak指针，讲一个对象暂时保存在这个变量
@property (nonatomic,weak) UIButton *cover;
@property (weak, nonatomic) IBOutlet UIView *answerView;


- (IBAction)tip;
- (IBAction)help;
- (IBAction)image:(id)sender;
- (IBAction)big;
- (IBAction)next;

@end

@implementation ViewController



-(NSArray *)quetions{
    _quetions = [NSMutableArray array];
    NSArray *dicArr = [BTQuestion questionsDict];
   
    for (NSDictionary *dict in dicArr) {
        BTQuestion *ques = [BTQuestion questionWithDict:dict];
        [_quetions addObject:ques];
    }
    return _quetions;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    _index = -1;
    [self next];
    self.cover = nil;
    self.isTiped = NO;
//    self.answerDict = [NSMutableDictionary dictionary];
    // Do any additional setup after loading the view, typically from a nib.
}

//按钮的边框是通过按钮的属性  EdgeInsets属性来完成的。

//按钮禁用但是不让他变灰的方法
//1. storyboard点击按钮属性栏取消复选框  enaled  和  disabled adjusts image
//2. 取消按钮的  user interaction enabled  属性。



/**
 ios7之后状态栏是通过控制器来控制的，之前是通过UIAplication来控制的。
 下面的方法是改变状态栏颜色的方法，每个控制器只要重写这个方法来制定样式。
 
 */
-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;//制定白色状态栏
}
//是否隐藏状态栏  yes隐藏，默认no
-(BOOL)prefersStatusBarHidden{
    return NO;
    
}


- (IBAction)next {
    self.index++;
    if (self.index> self.quetions.count-1) {
        return;
    }
    self.isTiped = NO;
    BTQuestion *curentQuestion = self.quetions[_index];
    [self setTopViews:curentQuestion];
    [self setAnswerBTNs:curentQuestion];
    [self setOptionBTNs:curentQuestion];
    
    //只要不等于最后一个那就
    self.nextBtn.enabled = self.index!=self.quetions.count-1;
    
}


//设置上面的空间
-(void)setTopViews:(BTQuestion*)question{
    self.questionNumber.text = [NSString stringWithFormat:@"%d/%lu",_index+1,(unsigned long)_quetions.count];
    self.questionContent.text = question.title;
    [self.iconView setImage:[UIImage imageNamed:question.icon] forState:UIControlStateNormal];
}
//设置答案按钮
-(void)setAnswerBTNs:(BTQuestion *)question{
    //添加答案按钮，
    //首先将上一题的按钮删除，然后添加这个题的按钮
    if (self.answerView.subviews.count != 0) {
        [self.answerView.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    }
    //添加本题按钮  居中
    NSInteger answerCount = question.answer.length;
    CGFloat answerHW = 40;//按钮宽高
    CGFloat marginCenter = 10;//按钮间距
    //最左边的距离
    CGFloat marginLeft = (self.view.frame.size.width - answerCount*answerHW - (answerCount-1)*marginCenter)/2;
    
    for (NSInteger i = 0; i<question.answer.length; i++) {
        UIButton *answerItem = [[UIButton alloc] init];
        [answerItem setBackgroundImage:[UIImage imageNamed:@"btn_answer"] forState:UIControlStateNormal];
        [answerItem setBackgroundImage:[UIImage imageNamed:@"btn_answer_highlighted"] forState:UIControlStateHighlighted];
        [answerItem setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [answerItem addTarget:self action:@selector(answerClick:) forControlEvents:UIControlEventTouchUpInside];
        CGFloat x = marginLeft +i*(answerHW + marginCenter);
        
        answerItem.frame = CGRectMake(x, 0, answerHW, answerHW);
        [self.answerView addSubview:answerItem];
    }
}
//设置选项按钮
-(void)setOptionBTNs:(BTQuestion *)question{
    //添加选项按钮
    int column = 7;
    NSInteger optionCount = question.optons.count;
    CGFloat optionBtnWH = 40;
    CGFloat marginBetween = 10;
    CGFloat marginL = (self.view.frame.size.width - column*optionBtnWH-(column-1)*marginBetween)/2;
    
    
    //删除上一题options
    if (self.optionView.subviews.count != 0) {
        [self.optionView.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    }
    
    
    //添加这题的options
    for (int i = 0; i < optionCount; i++) {
        UIButton *optionItem = [[UIButton alloc] init];
        [optionItem setBackgroundImage:[UIImage imageNamed:@"btn_answer"] forState:UIControlStateNormal];
        [optionItem setBackgroundImage:[UIImage imageNamed:@"btn_answer_highlighted"] forState:UIControlStateHighlighted];
        [optionItem setTitle:question.optons[i] forState:UIControlStateNormal];
        [optionItem setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        CGFloat optionX = marginL+(i%column)*(optionBtnWH+marginBetween);
        CGFloat optionY = (i/column)*(optionBtnWH+marginBetween);
        
        optionItem.frame = CGRectMake(optionX, optionY, optionBtnWH, optionBtnWH);
        [optionItem addTarget:self action:@selector(optionClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.optionView addSubview:optionItem];
        
        
    }
}

//监听option按钮点击
-(void)optionClick:(UIButton *)sender{
    
    self.isTiped = NO;
    if (self.index > self.quetions.count-1) {
        return;
    }
    
    
    BOOL full = YES;
    NSMutableString *yourAnswer = [NSMutableString string];
    for (UIButton *btn in self.answerView.subviews) {
        
        if (btn.currentTitle.length == 0) {
            
            //[self.answerDict setObject:sender forKey:btn];
            sender.hidden = YES;//先将其隐藏
            [btn setTitle:sender.titleLabel.text forState:UIControlStateNormal];
            
            
            break;
        }
        
        
    }
    BTQuestion *question = self.quetions[self.index];
    for (UIButton *b in self.answerView.subviews) {
        if (b.currentTitle.length == 0) {
            full = NO;
        }
        if (b.currentTitle.length != 0) {
             [yourAnswer appendString:b.currentTitle];
        }
       
    }
    
    if (full) {
        if ([question.answer isEqualToString:yourAnswer]) {
            [self.answerView.subviews makeObjectsPerformSelector:@selector(setBackgroundColor:) withObject:[UIColor greenColor]];
                       [self performSelector:@selector(next) withObject:nil afterDelay:1.5];
            [self setScore:1000 withOpr:YES];
        }else{
            [self.answerView.subviews makeObjectsPerformSelector:@selector(setBackgroundColor:) withObject:[UIColor redColor]];
        }
    }
    
}

-(void)answerClick:(UIButton *)sender{
    
    //[[self.answerDict objectForKey:sender] setHidden:NO];
    [self.answerView.subviews makeObjectsPerformSelector:@selector(setBackgroundColor:) withObject:[UIColor whiteColor]];
    //[self.answerDict removeObjectForKey:sender];
    for (UIButton *opBtn in self.optionView.subviews) {
        
        if ([sender.currentTitle isEqualToString:opBtn.currentTitle] && opBtn.hidden == YES) {
            opBtn.hidden = NO;
            break;
        }
    }
    [sender setTitle:nil forState:UIControlStateNormal];
}


-(void)setScore:(int)sc withOpr:(BOOL)flag{
    int score = self.coinView.currentTitle.intValue;
    if (flag) {
        score += sc;
    }else{
        score -=sc;
        if (score<0) {
            score = 0;
        }
    }
   
    [self.coinView setTitle:[NSString stringWithFormat:@"%d",score] forState:UIControlStateNormal];

}

- (IBAction)tip {
    if (self.isTiped) {
        return;
    }
    
    BTQuestion *question = self.quetions[self.index];
    
    for (int i = 0; i<self.answerView.subviews.count; i++) {
        UIButton *b = self.answerView.subviews[i];
        [self answerClick:b];//让每个按钮上的文字消失相当于按这个按钮。
        if (i == 0) {
            [self setScore:1000 withOpr:NO];
            self.isTiped = YES;
            for (UIButton *opBtn in self.optionView.subviews) {
                if ([opBtn.currentTitle isEqualToString:[question.answer substringToIndex:1]]) {
                    [self optionClick:opBtn];
                    break;
                }
            }
            [b setTitle:[question.answer substringToIndex:1] forState:UIControlStateNormal];
            
        }
        
        
    }
    
    
}

- (IBAction)help {
}

- (IBAction)image:(UIButton *)sender {
    if (self.cover == nil) {
        [self big];
    }else{
        [self closeCover:nil];
    }
}

- (IBAction)big {
    _iconFlag = YES;
    //通常可以点击的遮罩层使用按钮来实现的，这个按钮大小和当前屏幕大小一样，而且这个按钮式黑色，透明的。
    UIButton *btnCover = [[UIButton alloc] init];
    btnCover.frame = self.view.bounds;
    btnCover.backgroundColor = [UIColor blackColor];
    btnCover.alpha = 0;
    [btnCover addTarget:self action:@selector(closeCover:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnCover];
    _btnFrame = self.iconView.frame;
    
    //weak指针引用一个对象
    self.cover = btnCover;
    
    
    //将一个view提到最前,那个头像带到所有view之前，这样图片就不会遮罩挡住。
    [self.view bringSubviewToFront:self.iconView];
    
    [UIView animateWithDuration:1.0 animations:^{
        btnCover.alpha = 0.6;
        self.iconView.frame = CGRectMake(0, (self.view.frame.size.height-self.view.frame.size.width)/2, self.view.frame.size.width, self.view.frame.size.width);
    } ];
    
}


-(void)closeCover:(UIButton *)sender{
    
    [UIView animateWithDuration:1.0 animations:^{
        self.cover.alpha = 0;
        self.iconView.frame = _btnFrame;
        
    } completion:^(BOOL finished) {
         [self.cover removeFromSuperview];
        //这一步不能忘记，移除之后必须设成nil
        self.cover = nil;
    }];
    
}


@end
