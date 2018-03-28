//
//  UIButton+FillColor.m
//  123456
//
//  Created by Meteorshower on 16/6/24.
//  Copyright © 2016年 Meteorshower. All rights reserved.
//

#import "UIButton+FillColor.h"

//@interface UIButton (FillColor)
//- (void)centerImageAndTitle:(float)space;
//- (void)centerImageAndTitle;
//@end

@implementation UIButton (FillColor)

- (void)setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)state {
    [self setBackgroundImage:[UIButton imageWithColor:backgroundColor] forState:state];
}
//用颜色生成一个图片
+ (UIImage *)imageWithColor:(UIColor *)color {
    //定义一个尺寸
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    //开始图形绘制
    UIGraphicsBeginImageContext(rect.size);
    //一个不透明类型的Quartz 2D绘画环境,相当于一个画布,你可以在上面任意绘画
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //设置填充颜色(通过颜色设置填充颜色)
    CGContextSetFillColorWithColor(context, [color CGColor]);
    //填充框
    CGContextFillRect(context, rect);
    
    //设置图片(UIGraphicsGetImageFromCurrentImageContext(从当前图片的上下文获取图形图片))
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    //绘制图形结束
    UIGraphicsEndImageContext();
    
    return image;
}

@end
