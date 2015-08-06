//
//  FGGPieProgressView.m
//  FGGPieProgressView
//
//  Created by 夏桂峰 on 15/8/6.
//  Copyright (c) 2015年 夏桂峰. All rights reserved.
//

#import "FGGPieProgressView.h"

@implementation FGGPieProgressView

- (id)initWithFrame:(CGRect)frame andProgressColor:(UIColor *)progressColor
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.progressColor=progressColor;
    }
    return self;
}
-(void)setProgress:(CGFloat)progress
{
    if(progress>=0.0&&progress<=1.0)
    {
        _progress=progress;
        [self setNeedsDisplay];
    }
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGFloat xCenter = rect.size.width * 0.5;
    CGFloat yCenter = rect.size.height * 0.5;
    
    
    CGFloat radius = MIN(rect.size.width * 0.5, rect.size.height * 0.5);
    
    // 背景圆
    [FGGBackCircleColr set];
    CGFloat w = radius * 2
    ;
    CGFloat h = w;
    CGFloat x = (rect.size.width - w) * 0.5;
    CGFloat y = (rect.size.height - h) * 0.5;
    CGContextAddEllipseInRect(ctx, CGRectMake(x, y, w, h));
    CGContextFillPath(ctx);
    
    // 进程圆
    [self.progressColor set];
    CGContextMoveToPoint(ctx, xCenter, yCenter);
    CGContextAddLineToPoint(ctx, xCenter, 0);
    CGFloat to = - M_PI * 0.5 + (1-self.progress) * M_PI * 2 + 0.001; // 初始值
    CGContextAddArc(ctx, xCenter, yCenter, radius, - M_PI * 0.5, to, 1);
    CGContextClosePath(ctx);
    
    CGContextFillPath(ctx);
}

@end
