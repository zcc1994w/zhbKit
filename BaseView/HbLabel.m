//
//  HbLabel.m
//  zhbKit
//
//  Created by 张涵博 on 2018/3/28.
//  Copyright © 2018年 张涵博. All rights reserved.
//

#import "HbLabel.h"

@implementation HbLabel

- (instancetype)init:(CGFloat)font
               color:(UIColor *)color
                text:(NSString *)text{
    if([super init]){
        self.font = [UIFont systemFontOfSize:font];
        self.textColor = color;
        self.text = text;
    }
    return self;
}

- (instancetype)helvetica_bold:(CGFloat)font
                         color:(UIColor *)color
                          text:(NSString *)text{
    if([super init]){
        self.font = [UIFont fontWithName:@"Helvetica-Bold" size:font];
        self.textColor = color;
        self.text = text;
    }
    return self;
}

- (void)setText:(NSString *)text{
    [super setText:[text stringByReplacingOccurrencesOfString:@"(null)" withString:@""]];
}

- (void)corner:(CGFloat)corner
         color:(UIColor *)color{
    self.layer.borderColor = color.CGColor;
    self.layer.cornerRadius = corner;
    self.layer.borderWidth = 1.0f;
}

@end
