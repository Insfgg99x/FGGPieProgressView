//
//  ViewController.m
//  饼状进度条
//
//  Created by 夏桂峰 on 15/8/6.
//  Copyright (c) 2015年 夏桂峰. All rights reserved.
//

#import "ViewController.h"
#import "FGGPieProgressView.h"

#define kWidth [UIScreen mainScreen].bounds.size.width
#define kHeight [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    添加饼状进度条，并设置进度
    [self setWaterProgressViewWithProgress:0.88];
}
-(void)setWaterProgressViewWithProgress:(float)progress
{
    FGGPieProgressView *progressView=[[FGGPieProgressView alloc]initWithFrame:CGRectMake(kWidth/2-100, kHeight/2-100, 200, 200) andProgressColor:[UIColor greenColor]];
    [self.view addSubview:progressView];
    progressView.progress=progress;
}

@end
