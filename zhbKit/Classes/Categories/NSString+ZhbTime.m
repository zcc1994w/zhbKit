//
//  NSString+ZhbTime.m
//  Vega
//
//  Created by 张涵博 on 2018/1/13.
//  Copyright © 2018年 fidoyy. All rights reserved.
//

#import "NSString+ZhbTime.h"

@implementation NSString (ZhbTime)

+(NSString *)getTimeWithMinute:(NSString *)min{
    NSInteger seconds = [min floatValue] * 60;
    //format of hour
    NSString *str_hour = [NSString stringWithFormat:@"%02d",seconds/3600];
    //format of minute
    NSString *str_minute = [NSString stringWithFormat:@"%02d",(seconds%3600)/60];
    //format of second
    NSString *str_second = [NSString stringWithFormat:@"%02d",seconds%60];
    //format of time
    NSString *format_time = [NSString stringWithFormat:@"%@:%@:%@",str_hour,str_minute,str_second];
    
    return format_time;
}

@end
