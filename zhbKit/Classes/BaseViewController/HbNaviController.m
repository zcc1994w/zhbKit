//
//  HbNaviController.m
//  zhbKit
//
//  Created by 张涵博 on 2018/3/28.
//  Copyright © 2018年 张涵博. All rights reserved.
//

#import "HbNaviController.h"
#import "HbViewController.h"

@interface HbNaviController ()<UIGestureRecognizerDelegate>

@end

@implementation HbNaviController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationBarHidden = YES;
    self.view.backgroundColor = [UIColor whiteColor];
    self.pan = [[UIPanGestureRecognizer alloc]initWithTarget:self.interactivePopGestureRecognizer.delegate action:NSSelectorFromString(@"handleNavigationTransition:")];
    self.pan.delegate = self;
    [self.view addGestureRecognizer:self.pan];
    self.interactivePopGestureRecognizer.enabled = NO;
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer{
    return self.viewControllers.count > 1;
}

- (UIViewController *)childViewControllerForStatusBarStyle{
    return nil;
}

- (UIStatusBarStyle)preferredStatusBarStyle{
    return [self.topViewController isKindOfClass:[HbViewController class]] ? UIStatusBarStyleLightContent : UIStatusBarStyleDefault;
}

- (void)gotoback{
    [self popViewControllerAnimated:YES];
}

@end
