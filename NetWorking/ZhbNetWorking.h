//
//  ZhbNetWorking.h
//  BeautyCaravan
//
//  Created by 张涵博 on 2017/3/22.
//  Copyright © 2017年 张涵博. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ZhbUploadParam;

/**
 *  网络请求类型
 */
typedef NS_ENUM(NSUInteger,HttpRequestType) {
    /**
     *  get请求
     */
    Get = 0,
    /**
     *  post请求
     */
    Post,
    /**
     *  put请求
     */
    put
};

@interface ZhbNetWorking : NSObject

+(void)ZhbPutWithURLString:(NSString *)URLString parameters:(id)parameters headerName:(NSString *)headername headerValue:(NSString *)headerValue success:(void (^)(id))success failure:(void (^)(NSError *))failure;


/**
 *  发送网络请求
 *
 *  @param URLString   请求的网址字符串
 *  @param parameters  请求的参数
 *  @param type        请求的类型
 *  @param resultBlock 请求的结果
 */
+ (void)ZhbRequestWithURLString:(NSString *)URLString
                  parameters:(id)parameters
                        type:(HttpRequestType)type
                     success:(void (^)(id responseObject))success
                     failure:(void (^)(NSString *error))failure;

/**
 *  上传图片
 *
 *  @param URLString   上传图片的网址字符串
 *  @param parameters  上传图片的参数
 *  @param uploadParam 上传图片的信息
 *  @param success     上传成功的回调
 *  @param failure     上传失败的回调
 */
+ (void)ZhbUploadWithURLString:(NSString *)URLString
                    parameters:(id)parameters
                   uploadParam:(ZhbUploadParam *)uploadParam
                       success:(void (^)(id responseObject))success
                       failure:(void (^)(NSError *))failure;

@end
