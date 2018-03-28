//
//  NSMutableAttributedString+zhb.m
//  MoDiChuXing
//
//  Created by 张涵博 on 2017/9/28.
//  Copyright © 2017年 张涵博. All rights reserved.
//

#import "NSMutableAttributedString+zhb.h"
#import "UIColor+hexColor.h"
#import <UIKit/UIKit.h>


@implementation NSMutableAttributedString (zhb)

- (void)zhbAppendString:(NSString *)string withColor:(NSString *)color font:(CGFloat)font
{
    NSMutableAttributedString *attString = [[NSMutableAttributedString alloc] initWithString:string];
    
    NSRange range = NSMakeRange(0, string.length);
    [attString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:font] range:range];
    [attString addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithHexString:color] range:range];
    
    [self appendAttributedString:attString];
    
}

@end
