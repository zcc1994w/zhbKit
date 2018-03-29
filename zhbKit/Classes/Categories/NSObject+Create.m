//
//  NSObject+Create.m
//  MoDiChuXing
//
//  Created by 张涵博 on 2017/9/18.
//  Copyright © 2017年 张涵博. All rights reserved.
//

#import "NSObject+Create.h"
#import <UIKit/UIKit.h>

@implementation NSObject (Create)

- (UILabel *)CreateLabelWithFrame:(CGRect)frame textColor:(UIColor *)textColor backGroundColor:(UIColor *)backColor fontSize:(NSInteger)size{
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.backgroundColor = backColor;
    label.textColor = textColor;
    label.font = [UIFont systemFontOfSize:size];
    return label;
}

- (UIView *)CreateViewWithFrame:(CGRect)frame backGroundColor:(UIColor *)backColor{
    UIView *view = [[UIView alloc]initWithFrame:frame];
    view.backgroundColor = backColor;
    return view;
}

-(UIButton *)CreateBtnWithFrame:(CGRect)frame type:(UIButtonType)buttonType image:(UIImage *)image title:(NSString *)title fontSize:(NSInteger)size textColor:(UIColor *)textColor backGroundColor:(UIColor *)backColor target:(id)target action:(SEL)action{
    UIButton *button = [UIButton buttonWithType:buttonType];
    [button setFrame:frame];
    if (title) {
        [button setTitle:title forState:UIControlStateNormal];
        button.titleLabel.font = [UIFont systemFontOfSize:size];
    }
    if (textColor) {
        [button setTitleColor:textColor forState:UIControlStateNormal];
    }
    if (image) {
        [button setImage:image forState:UIControlStateNormal];
    }
    if (backColor) {
        [button setBackgroundColor:backColor];
    }
    if (action || target) {
        [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    return button;
}
@end
