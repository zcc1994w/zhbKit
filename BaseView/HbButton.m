//
//  HbButton.m
//  zhbKit
//
//  Created by 张涵博 on 2018/3/28.
//  Copyright © 2018年 张涵博. All rights reserved.
//

#import "HbButton.h"

@implementation HbButton

- (instancetype)init:(CGFloat)font
               title:(NSString *)title
               color:(UIColor *)color
             bgColor:(UIColor *)bgColor{
    if([super init]){
        [self setTitle:title forState:UIControlStateNormal];
        self.titleLabel.font = [UIFont systemFontOfSize:font];
        [self setTitleColor:color forState:UIControlStateNormal];
        self.backgroundColor = bgColor;
    }
    return self;
}

- (instancetype)helvetica_bold:(CGFloat)font
                         title:(NSString *)title
                         color:(UIColor *)color
                       bgColor:(UIColor *)bgColor{
    if([super init]){
        [self setTitle:title forState:UIControlStateNormal];
        self.titleLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:font];
        [self setTitleColor:color forState:UIControlStateNormal];
        self.backgroundColor = bgColor;
    }
    return self;
}

- (void)corner:(CGFloat)corner
     lineWidth:(CGFloat)lineWidth
         color:(UIColor *)color{
    self.layer.cornerRadius = corner;
    self.layer.borderWidth = lineWidth;
    self.layer.borderColor = color.CGColor;
}

- (void)corner:(CGFloat)corner
         color:(UIColor *)color{
    self.layer.cornerRadius = corner;
    self.layer.borderColor = color.CGColor;
    self.layer.borderWidth = 1.0f;
}

- (void)bg:(CGFloat)corner{
    self.layer.cornerRadius = corner;
    self.layer.masksToBounds = YES;
}

//缩放动画
- (void)scaleAnimation{
    CAKeyframeAnimation *anim = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale"];
    anim.values = @[@1.0, @1.05, @0.95, @1.0];
    anim.keyTimes = @[@0.0, @0.25, @0.75, @1.0];
    anim.fillMode = kCAFillModeForwards;
    anim.removedOnCompletion = NO;
    anim.repeatCount = MAXFLOAT;
    anim.duration = 6.0;
    [self.layer addAnimation:anim forKey:@"anim"];
}

//圆环动画
- (void)rotateAnimation{
    
}

@end
