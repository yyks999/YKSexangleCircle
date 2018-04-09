//
//  ViewController.m
//  YKSexangleCircle
//
//  Created by 杨翊楷 on 15/1/20.
//  Copyright (c) 2015年 杨翊楷. All rights reserved.
//

#import "ViewController.h"
#import "YKSexangleCircleView.h"
#import "YKButton.h"

@interface ViewController ()
{
    
}

@property (nonatomic, strong) YKSexangleCircleView *sexangleCircleView;

@property (nonatomic, strong) NSArray *iLiaoNingContents;
@property (nonatomic, strong) NSArray *cmccContents;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _iLiaoNingContents = [NSArray arrayWithObjects:@"W",@"O",@"R",@"L",@"D",@":-)", nil];
    _cmccContents = [NSArray arrayWithObjects:@"W",@"O",@"R",@"L",@"D",@":-)", nil];
    
    int wid = 250;
    _sexangleCircleView = [[YKSexangleCircleView alloc] initWithFrame:CGRectMake((SCREEN_WIDTH - wid) / 2, 200, wid, wid)];
    _sexangleCircleView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:_sexangleCircleView];
    [_sexangleCircleView showWithContents:self.iLiaoNingContents];
    
    ViewController *vc = self;
    _sexangleCircleView.buttonClick = ^(YKButton *button, NSInteger index)
    {
        NSLog(@"-- %ld",index);
        
        switch (index) {
            case 0:
                button.selected = button.selected ? NO : YES;
//                [vc.sexangleCircleView setCenterTitle:button.selected ? @"CMCC" : @"iLiaoNing"];
                
                if(button.selected)
                {
                    [vc.sexangleCircleView hide];
                    [vc flipNewAnimation:vc.sexangleCircleView.centerButton type:UIViewAnimationOptionTransitionFlipFromLeft];
                    [vc performSelector:@selector(showCmccContents) withObject:nil afterDelay:1];
                }
                else
                {
                    [vc.sexangleCircleView hide];
                    [vc flipNewAnimation:vc.sexangleCircleView.centerButton type:UIViewAnimationOptionTransitionFlipFromLeft];
                    [vc performSelector:@selector(showiLiaoNingContents) withObject:nil afterDelay:1];
                }
                
                break;
            case 1:
//                [sexangleCircleView hide];
                break;
            case 2:
                
                break;
            case 3:
                
                break;
            case 4:
                
                break;
            case 5:
                
                break;
            case 6:
                
                break;
                
            default:
                break;
        }
    };
}

-(void)showiLiaoNingContents
{
    [_sexangleCircleView showWithContents:_iLiaoNingContents];
}

-(void)showCmccContents
{
    [_sexangleCircleView showWithContents:_cmccContents];
}

-(void)flipNewAnimation:(UIView *)view type:(int)type
{
    [UIView transitionWithView:view duration:0.8 options:type animations:^{
        
    } completion:^(BOOL finished) {
        if(finished)
        {
            
        }
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
