//
//  WebViewJsBridge.h
//  VoxStudent
//
//  Created by zhaoxy on 14-3-8.
//  Copyright (c) 2014年 17zuoye. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define kCustomProtocolScheme @"jscall"
#define kBridgeName           @"external"

@interface WebViewJsBridge : NSObject<UIWebViewDelegate>

@property (nonatomic, weak) UIWebView *webView;

+ (instancetype)bridgeForWebView:(UIWebView*)webView webViewDelegate:(NSObject<UIWebViewDelegate>*)webViewDelegate;
+ (instancetype)bridgeForWebView:(UIWebView*)webView webViewDelegate:(NSObject<UIWebViewDelegate>*)webViewDelegate resourceBundle:(NSBundle*)bundle;

- (void)excuteJSWithFunction:(NSString *)function;

@end
