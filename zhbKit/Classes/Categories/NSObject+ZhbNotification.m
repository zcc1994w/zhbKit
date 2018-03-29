//
//  NSObject+ZhbNotification.m
//  Vega
//
//  Created by 张涵博 on 2017/12/28.
//  Copyright © 2017年 fidoyy. All rights reserved.
//

#import "NSObject+ZhbNotification.h"
#import <ReactiveCocoa.h>

@implementation NSObject (ZhbNotification)

-(void)zhbPostNotiWithName:(NSString *)name obj:(id)obj{
    [[NSNotificationCenter defaultCenter] postNotificationName:name object:obj];
}

-(void)zhbReciveNotiWithName:(NSString *)name getBlock:(void (^)(NSNotification *))block{
    [[[NSNotificationCenter defaultCenter] rac_addObserverForName:name object:nil] subscribeNext:^(NSNotification *notification) {
        block(notification);
    }];
}

- (void)zhbRemoveNotiWithName:(NSString *)name{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:name object:nil];
}

@end
