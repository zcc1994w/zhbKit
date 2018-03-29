//
//  UIButton+Border.m
//  BeautyCaravan
//
//  Created by 张涵博 on 16/10/13.
//  Copyright © 2016年 张涵博. All rights reserved.
//

#import "UIButton+Border.h"
#import "UIColor+hexColor.h"

@implementation UIButton (Border)

-(void)buttonWithBorderWidth:(CGFloat)width color:(UIColor *)color cordi:(CGFloat)cordi{
    self.layer.cornerRadius = cordi;
    self.layer.borderColor = color.CGColor;
    self.layer.borderWidth = width;
    self.layer.masksToBounds = YES;
}

-(void)buttonWithCordi:(CGFloat)cordi{
    self.layer.cornerRadius = cordi;
    self.layer.masksToBounds = YES;
}

+ (UIButton *)rotate360DegreeWithImageView:(UIButton *)imageView timer:(CGFloat)timer{
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath: @"transform" ];
    
    animation.fromValue = [NSValue valueWithCATransform3D:CATransform3DIdentity];
    
    //围绕Z轴旋转，垂直与屏幕
    
    animation.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeRotation(M_PI/2.0, 0.0, 0.0, 1.0) ];
    
    animation.duration = timer;
    
    //旋转效果累计，先转180度，接着再旋转180度，从而实现360旋转
    
    animation.cumulative = YES;
    
    animation.repeatCount = MAXFLOAT;
    
    CGRect imageRrect = CGRectMake(0, 0,imageView.imageView.frame.size.width, imageView.imageView.frame.size.height);
    
    UIGraphicsBeginImageContext(imageRrect.size);
    
    //在图片边缘添加一个像素的透明区域，去图片锯齿
    
    [imageView.currentImage drawInRect:CGRectMake(1,1,imageView.imageView.frame.size.width-2,imageView.imageView.frame.size.height-2)];
    
    [imageView setImage: UIGraphicsGetImageFromCurrentImageContext() forState:UIControlStateNormal];
    
    UIGraphicsEndImageContext();
    
    [imageView.imageView.layer addAnimation:animation forKey:@"animation"];
    
    return imageView;
    
}

- (void)shadowButtonWithColor:(NSString *)color offset:(CGSize)size shadowOpacity:(CGFloat)opacity radius:(CGFloat)radius{
    self.layer.shadowColor = [UIColor colorWithHexString:color].CGColor;
    self.layer.shadowOffset = size;
    self.layer.shadowOpacity = opacity;
    self.layer.shadowRadius = radius;
}

-(void)setFontWith:(CGFloat)size{
    [self.titleLabel setFont:[UIFont systemFontOfSize:size]];
}

@end
