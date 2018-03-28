//
//  NSObject+Create.h
//  MoDiChuXing
//
//  Created by 张涵博 on 2017/9/18.
//  Copyright © 2017年 张涵博. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSObject (Create)

- (UILabel *)CreateLabelWithFrame:(CGRect)frame textColor:(UIColor *)textColor backGroundColor:(UIColor *)backColor fontSize:(NSInteger)size;

- (UIView *)CreateViewWithFrame:(CGRect)frame backGroundColor:(UIColor *)backColor;

- (UIButton *)CreateBtnWithFrame:(CGRect)frame type:(UIButtonType)buttonType image:(UIImage *)image title:(NSString *)title fontSize:(NSInteger)size textColor:(UIColor *)textColor backGroundColor:(UIColor *)backColor target:(id)target action:(SEL)action;

@end
