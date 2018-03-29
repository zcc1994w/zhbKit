//
//  UIView+category.h
//  zhbKit
//
//  Created by 张涵博 on 2018/3/15.
//  Copyright © 2018年 张涵博. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (category)

+ (instancetype)hb_instanceFromXib;

- (void)removeAllSubviews;

@end
