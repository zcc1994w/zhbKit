//
//  BaseJsBridge.m
//  WoodWorker
//
//  Created by 张涵博 on 16/4/13.
//  Copyright © 2016年 陈中培. All rights reserved.
//

#import "BaseJsBridge.h"

@implementation BaseJsBridge

- (void)order:(NSArray *)arr{
    if (self.orderBridge) {
        self.orderBridge([arr firstObject]);
    }
}


- (void)app:(NSArray *)arr{
    if (self.shopAppBridge) {
        self.shopAppBridge([arr firstObject]);
    }
}


- (void)login{
    if (self.showLogin) {
        self.showLogin();
    }
}


- (void)show:(NSArray *)arr{
    if (self.showAlertBridge) {
        self.showAlertBridge([arr firstObject]);
    }
}


- (void)update {
    if (self.updateBridge) {
        self.updateBridge();
    }
}

//- (void)show:(NSArray *)arr{
//    if (self.showStatus) {
//        self.showStatus([arr firstObject]);
//    }
//}

- (void)reply:(NSArray *)arr{
    if (self.replyId) {
        self.replyId([arr firstObject]);
    }
}

- (void)finished{
    if (self.exitClick) {
        self.exitClick();
    }
}

- (void)back{
    if (self.exitClick) {
        self.exitClick();
    }
}

- (void)pay:(NSArray *)arr{
    if (self.payClick) {
        self.payClick([arr firstObject]);
    }
}


@end
