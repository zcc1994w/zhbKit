//
//  BaseWebViewController.h
//  WoodWorker
//
//  Created by 张涵博 on 16/4/13.
//  Copyright © 2016年 陈中培. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseJsBridge.h"

@interface BaseWebViewController : UIViewController<UIWebViewDelegate>
@property (nonatomic,strong) UIWebView *webView;

@property (nonatomic,copy) NSString *webViewUrlString;

@property (nonatomic,strong) BaseJsBridge *webViewJsBridge;

@end
