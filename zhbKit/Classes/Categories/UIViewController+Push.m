//
//  UIViewController+Push.m
//  zhbKit
//
//  Created by 张涵博 on 2018/3/15.
//  Copyright © 2018年 张涵博. All rights reserved.
//

#import "UIViewController+Push.h"

@implementation UIViewController (Push)

+ (UIViewController *)hb_instanceFromStoryBoard{
    NSString *name = NSStringFromClass([self class]);
    UIStoryboard *sb = [UIStoryboard storyboardWithName:name bundle:nil];
    UIViewController *controller = [sb instantiateViewControllerWithIdentifier:name];
    return controller;
}

@end
