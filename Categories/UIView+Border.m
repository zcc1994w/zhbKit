//
//  UIView+Border.m
//  MJSmartHome
//
//  Created by 张涵博 on 2017/5/19.
//  Copyright © 2017年 张涵博. All rights reserved.
//

#import "UIView+Border.h"

@implementation UIView (Border)

-(void)ViewWithBorderWidth:(CGFloat)width color:(UIColor *)color cordi:(CGFloat)cordi{
    self.layer.cornerRadius = cordi;
    self.layer.borderColor = color.CGColor;
    self.layer.borderWidth = width;
    self.layer.masksToBounds = YES;
}

-(void)ViewWithCordi:(CGFloat)cordi{
    self.layer.cornerRadius = cordi;
    self.layer.masksToBounds = YES;
}

- (void)viewCornerJustOneWithSize:(CGSize)size frame:(CGRect)frame one:(UIRectCorner)one two:(UIRectCorner)two{
    UIBezierPath * maskPath = [UIBezierPath bezierPathWithRoundedRect:frame byRoundingCorners:one | two cornerRadii:size];
    CAShapeLayer * maskLayer = [CAShapeLayer new];
    maskLayer.frame = frame;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}

@end
