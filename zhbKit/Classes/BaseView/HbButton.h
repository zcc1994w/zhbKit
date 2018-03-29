//
//  HbButton.h
//  zhbKit
//
//  Created by 张涵博 on 2018/3/28.
//  Copyright © 2018年 张涵博. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HbButton : UIButton

- (instancetype)init:(CGFloat)font
               title:(NSString *)title
               color:(UIColor *)color
             bgColor:(UIColor *)bgColor;

- (instancetype)helvetica_bold:(CGFloat)font
                         title:(NSString *)title
                         color:(UIColor *)color
                       bgColor:(UIColor *)bgColor;

- (void)corner:(CGFloat)corner
     lineWidth:(CGFloat)lineWidth
         color:(UIColor *)color;

- (void)corner:(CGFloat)corner
         color:(UIColor *)color;

- (void)bg:(CGFloat)corner;

//缩放动画
- (void)scaleAnimation;

//圆环动画
- (void)rotateAnimation;

@end
