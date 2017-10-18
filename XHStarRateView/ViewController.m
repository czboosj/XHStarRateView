//
//  ViewController.m
//  XHStarRateView
//
//  Created by huahua on 16/4/1.
//  Copyright © 2016年 jxh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <XHStarRateViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    XHStarRateView *starRateView = [[XHStarRateView alloc] initWithFrame:CGRectZero];
    starRateView.isAnimation = YES;
    starRateView.rateStyle = IncompleteStar;
    starRateView.tag = 1;
    starRateView.delegate = self;
    [self.view addSubview:starRateView];
//    starRateView.frame = CGRectMake(20, 60, 200, 30);
    starRateView.sd_layout
    .widthIs(200)
    .heightIs(30)
    .leftSpaceToView(self.view, 20)
    .topSpaceToView(self.view, 60);
    starRateView.backgroundColor = [UIColor redColor];
    
    XHStarRateView *starRateView2 = [[XHStarRateView alloc] initWithFrame:CGRectMake(20, 100, 200, 30) numberOfStars:5 rateStyle:HalfStar isAnination:YES delegate:self];
    starRateView2.tag = 2;
    [self.view addSubview:starRateView2];

    XHStarRateView *starRateView3 = [[XHStarRateView alloc] initWithFrame:CGRectMake(20, 140, 200, 30) finish:^(CGFloat currentScore) {
        NSLog(@"3----  %f",currentScore);
    }];
    [self.view addSubview:starRateView3];

    XHStarRateView *starRateView4 = [[XHStarRateView alloc] initWithFrame:CGRectMake(20, 180, 200, 30) numberOfStars:5 rateStyle:HalfStar isAnination:YES finish:^(CGFloat currentScore) {
        NSLog(@"4----  %f",currentScore);
    }];
    [self.view addSubview:starRateView4];
    
}

-(void)starRateView:(XHStarRateView *)starRateView currentScore:(CGFloat)currentScore{
    NSLog(@"%ld----  %f",(long)starRateView.tag,currentScore);
}

@end
