//
//  BaseJsBridge.h
//  WoodWorker
//
//  Created by 张涵博 on 16/4/13.
//  Copyright © 2016年 陈中培. All rights reserved.
//

#import "WebViewJsBridge.h"

@interface BaseJsBridge : WebViewJsBridge

@property (nonatomic ,copy) void(^orderBridge)(NSString *orderId);

@property (nonatomic ,copy) void(^shopAppBridge)(NSString *add);


@property (nonatomic ,copy) void(^showAlertBridge)(NSString *value);

@property (nonatomic ,copy) void(^updateBridge)();

@property (nonatomic,copy) void(^showLogin)();

@property (nonatomic,copy) void(^showStatus)(NSString *status);

@property (nonatomic,copy) void(^replyId)(NSString *replyId);

@property (nonatomic,copy) void(^exitClick)();

@property (nonatomic,copy) void(^payClick)(NSString *pay);

@end
