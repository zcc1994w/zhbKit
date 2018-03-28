//
//  NSMutableAttributedString+zhb.h
//  MoDiChuXing
//
//  Created by 张涵博 on 2017/9/28.
//  Copyright © 2017年 张涵博. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSMutableAttributedString (zhb)

- (void)zhbAppendString:(NSString *)string withColor:(NSString *)color font:(CGFloat)font;

@end
