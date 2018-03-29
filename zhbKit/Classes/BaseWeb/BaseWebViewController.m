//
//  BaseWebViewController.m
//  WoodWorker
//
//  Created by 张涵博 on 16/4/13.
//  Copyright © 2016年 陈中培. All rights reserved.
//

#import "BaseWebViewController.h"


@interface BaseWebViewController ()

@end

@implementation BaseWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.webView];
    self.webViewJsBridge = [BaseJsBridge bridgeForWebView:self.webView webViewDelegate:self];

}

- (UIWebView *)webView{
    if (_webView == nil) {
        _webView  = [[UIWebView alloc] initWithFrame:[[UIScreen mainScreen]bounds]];
        _webView.delegate = self;
    }
    return _webView;
}
-(void)setWebViewUrlString:(NSString *)webViewUrlString{
    _webViewUrlString = webViewUrlString;
    
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:webViewUrlString]]];
    
}







- (NSString *)founction:(NSString *)method value:(NSString *)value{
    NSString *result = nil;
    if (value) {
        result = [NSString stringWithFormat:@"%@('%@')",method,value];
    }else{
        result = [NSString stringWithFormat:@"%@()",method];
        
    }
    return result;
}

- (NSString *)founction:(NSString *)method param:(NSDictionary *)param{
    NSString *result = nil;
    if (param) {
        result = [NSString stringWithFormat:@"%@('%@')",method,[self stringParams:param]];
    }else{
        result = [NSString stringWithFormat:@"%@()",method];
    }
    return result;
}


- (NSString *)stringParams:(NSDictionary *)params {
    
    __block NSString *result = [NSString new];
    
    [params enumerateKeysAndObjectsUsingBlock:^(NSString *key, NSString *obj, BOOL * _Nonnull stop) {
        result = [result stringByAppendingString:[NSString stringWithFormat:@"('%@':'%@'),",key,obj]];
    }];
    
    result = [result substringToIndex:result.length -1];
    
    return   result;
    
}

@end
