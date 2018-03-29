//
//  NSObject+ZhbNotification.h
//  Vega
//
//  Created by 张涵博 on 2017/12/28.
//  Copyright © 2017年 fidoyy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (ZhbNotification)

- (void)zhbPostNotiWithName:(NSString *)name obj:(id)obj;

- (void)zhbReciveNotiWithName:(NSString *)name getBlock:(void (^)(NSNotification *notification))block;

- (void)zhbRemoveNotiWithName:(NSString *)name;

@end
