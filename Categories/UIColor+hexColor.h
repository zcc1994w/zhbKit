//
//  UIColor+hexColor.h
//  BeautyCaravan
//
//  Created by 张涵博 on 16/10/14.
//  Copyright © 2016年 张涵博. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface UIColor (hexColor)

+ (UIColor*)colorWithHexString:(NSString*)stringToConvert;

@end
