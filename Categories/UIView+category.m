//
//  UIView+category.m
//  zhbKit
//
//  Created by 张涵博 on 2018/3/15.
//  Copyright © 2018年 张涵博. All rights reserved.
//

#import "UIView+category.h"

@implementation UIView (category)

+ (instancetype)hb_instanceFromXib {
    NSArray *nib = [[NSBundle mainBundle]loadNibNamed:NSStringFromClass(self) owner:nil options:nil];
    UIView *result = [nib objectAtIndex:0];
    return result;
}

- (void)removeAllSubviews {
    while (self.subviews.count) {
        UIView* child = self.subviews.lastObject;
        [child removeFromSuperview];
    }
}

@end
