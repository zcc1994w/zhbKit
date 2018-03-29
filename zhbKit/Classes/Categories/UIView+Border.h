//
//  UIView+Border.h
//  MJSmartHome
//
//  Created by 张涵博 on 2017/5/19.
//  Copyright © 2017年 张涵博. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Border)
-(void)ViewWithBorderWidth:(CGFloat)width color:(UIColor *)color cordi:(CGFloat)cordi;

-(void)ViewWithCordi:(CGFloat)cordi;

- (void)viewCornerJustOneWithSize:(CGSize)size frame:(CGRect)frame one:(UIRectCorner)one two:(UIRectCorner)two;

@end
