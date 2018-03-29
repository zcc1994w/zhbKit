//
//  UIButton+Border.h
//  BeautyCaravan
//
//  Created by 张涵博 on 16/10/13.
//  Copyright © 2016年 张涵博. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Border)

- (void)buttonWithBorderWidth:(CGFloat)width color:(UIColor *)color cordi:(CGFloat)cordi;

- (void)buttonWithCordi:(CGFloat)cordi;

+ (UIButton *)rotate360DegreeWithImageView:(UIButton *)imageView timer:(CGFloat)timer;

- (void)shadowButtonWithColor:(NSString *)color offset:(CGSize)size shadowOpacity:(CGFloat)opacity radius:(CGFloat)radius;

- (void)setFontWith:(CGFloat)size;

@end
