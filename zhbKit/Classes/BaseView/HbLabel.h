//
//  HbLabel.h
//  zhbKit
//
//  Created by 张涵博 on 2018/3/28.
//  Copyright © 2018年 张涵博. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HbLabel : UILabel

- (instancetype)init:(CGFloat)font
               color:(UIColor *)color
                text:(NSString *)text;

- (instancetype)helvetica_bold:(CGFloat)font
                         color:(UIColor *)color
                          text:(NSString *)text;

- (void)corner:(CGFloat)corner
         color:(UIColor *)color;

@end
