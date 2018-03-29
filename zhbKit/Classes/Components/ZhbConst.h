//
//  ZhbConst.h
//  zhbKit
//
//  Created by 张涵博 on 2018/3/15.
//  Copyright © 2018年 张涵博. All rights reserved.
//

#pragma mark 张涵博用宏命令

//弱引用与强引用
#define hb_WEAKSELF __weak typeof(self) weakSelf = self;

//屏幕尺寸数据
#define hb_Width  [[UIScreen mainScreen] bounds].size.width
#define hb_Height [[UIScreen mainScreen] bounds].size.height
#define hb_Bounds [[UIScreen mainScreen] bounds]
#define hb_Size   [[UIScreen mainScreen] bounds].size
#define hb_Top ([UIScreen mainScreen].bounds.size.height > 800.0?88.0:64.0)
#define hb_Bottom ([UIScreen mainScreen].bounds.size.height > 800.0?83.0:49.0)
#define hb_RealHeight HEIGHT-TOP-BOTTOM
//屏幕尺寸大小判断
#define hb_3_5 ([UIScreen mainScreen].bounds.size.height==480.0f)
#define hb_4_0 ([UIScreen mainScreen].bounds.size.height==568.0f)
#define hb_4_7 ([UIScreen mainScreen].bounds.size.height==667.0f)
#define hb_5_5 ([UIScreen mainScreen].bounds.size.height==736.0f)
#define hb_5_5 ([UIScreen mainScreen].bounds.size.height==736.0f)
#define hb_x_x ([UIScreen mainScreen].bounds.size.height==812.0f)
//比例
#define hb_width_SCALE(x)    (x * ([[UIScreen mainScreen] bounds].size.width / 375))
#define hb_height_SCALE(x)    (x * ([[UIScreen mainScreen] bounds].size.height / 667))
//导航栏高度判断
#define hb_navHeight     ([[UIScreen mainScreen] bounds].size.height == 812 ? 88 : 64)
//打印
#define ZhbLog(Str)  NSLog(@"%@",Str);
//
#define IMAGE_NAMED(name) [UIImage imageNamed:name]
#define FONT_SIZE(size) [UIFont systemFontOfSize:size]
