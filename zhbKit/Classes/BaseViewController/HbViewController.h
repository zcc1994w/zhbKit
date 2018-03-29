//
//  HbViewController.h
//  zhbKit
//
//  Created by 张涵博 on 2018/3/28.
//  Copyright © 2018年 张涵博. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HbNaviBar.h"
#import "zhbKitHelper.h"

@interface HbViewController : UIViewController
@property(nonatomic,strong) HbNaviBar *navigation_bar;
- (void)setNaviBarButtomButton;
- (void)gotoback;
- (void)bringNaviToFront;
@end
