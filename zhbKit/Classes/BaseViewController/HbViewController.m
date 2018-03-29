//
//  HbViewController.m
//  zhbKit
//
//  Created by 张涵博 on 2018/3/28.
//  Copyright © 2018年 张涵博. All rights reserved.
//

#import "HbViewController.h"

@interface HbViewController ()

@end

@implementation HbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigation_bar = [[HbNaviBar alloc]initWithFrame:CGRectMake(-0.5, 0, hb_Width+1, hb_Top)];
    [self.view addSubview:self.navigation_bar];
    
    NSInteger version = [[[UIDevice currentDevice] systemVersion] integerValue];
    if(version < 11){
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
    
    [self setNaviBarButtomButton];
}

- (void)gotoback{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)setNaviBarButtomButton{
    self.navigationController.viewControllers.count >= 2 ? self.navigation_bar.navigation_item.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"back"] style:UIBarButtonItemStyleDone target:self action:@selector(gotoback)]:nil;
}

- (void)bringNaviToFront{
    [self.view bringSubviewToFront:self.navigation_bar];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self bringNaviToFront];
}

- (void)dealloc{
    NSLog(@"%@销毁了",[self class]);
}

@end
