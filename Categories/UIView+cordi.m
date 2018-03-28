//
//  UIView+cordi.m
//  Vega
//
//  Created by 张涵博 on 2017/12/12.
//  Copyright © 2017年 fidoyy. All rights reserved.
//

#import "UIView+cordi.h"

@implementation UIView (cordi)

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

@end
