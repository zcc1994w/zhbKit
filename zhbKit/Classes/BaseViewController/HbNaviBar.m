//
//  HbNaviBar.m
//  zhbKit
//
//  Created by 张涵博 on 2018/3/28.
//  Copyright © 2018年 张涵博. All rights reserved.
//

#import "HbNaviBar.h"

@implementation HbNaviBar

- (instancetype)initWithFrame:(CGRect)frame{
    if([super initWithFrame:frame]){
        self.translucent = NO;
        self.navigation_item = [[UINavigationItem alloc]init];
        self.items = @[self.navigation_item];
        
        //详细的设置
        UIImage *image = [[UIImage imageNamed:@"navi"] resizableImageWithCapInsets:UIEdgeInsetsMake(5, 5, 5, 5) resizingMode:UIImageResizingModeStretch];
        [self setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
        [self setShadowImage:[UIImage new]];
        [self setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor whiteColor]}];
        [self setTintColor:[UIColor whiteColor]];
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    NSInteger systemVersion = [UIDevice currentDevice].systemVersion.integerValue;
    for (UIView *view in self.subviews) {
        if (systemVersion >= 11) {
            if ([view isKindOfClass:NSClassFromString(@"_UIBarBackground")]) {
                CGRect frame = view.frame;
                frame.size.height = 64;
                if ([UIScreen mainScreen].bounds.size.height > 800) {
                    frame.origin.y = 0;
                    frame.size.height = 88;
                }
                view.frame = frame;
            }
            if ([view isKindOfClass:NSClassFromString(@"_UINavigationBarContentView")]) {
                CGRect frame = view.frame;
                frame.origin.y = 20;
                if ([UIScreen mainScreen].bounds.size.height > 800) {
                    frame.origin.y = 44;
                }
                view.frame = frame;
            }
        }
    }
}

@end
