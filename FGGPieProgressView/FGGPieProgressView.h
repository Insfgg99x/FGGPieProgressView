//
//  FGGPieProgressView.h
//  FGGPieProgressView
//
//  Created by 夏桂峰 on 15/8/6.
//  Copyright (c) 2015年 夏桂峰. All rights reserved.
//

#import <UIKit/UIKit.h>

//饼状进度条的底衬圆的颜色
#define FGGBackCircleColr ([UIColor yellowColor])

@interface FGGPieProgressView : UIView

@property (nonatomic, assign) CGFloat progress;
@property (nonatomic, strong) UIColor *progressColor;

- (id)initWithFrame:(CGRect)frame andProgressColor:(UIColor *)progressColor;

@end
