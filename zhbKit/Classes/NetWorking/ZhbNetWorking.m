//
//  ZhbNetWorking.m
//  BeautyCaravan
//
//  Created by 张涵博 on 2017/3/22.
//  Copyright © 2017年 张涵博. All rights reserved.
//

#import "ZhbNetWorking.h"
#import "AFNetworking.h"
#import "ZhbUploadParam.h"

#define TimeOut 20

@interface ZhbNetWorking()

@property (nonatomic, assign, readwrite) AFNetworkReachabilityStatus status;
@end

@implementation ZhbNetWorking

#pragma mark - 私有
+ (instancetype)sharedApi{
    static ZhbNetWorking *_api;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _api = [ZhbNetWorking new];
    });
    return _api;
}

- (instancetype)init{
    self = [super init];
    if (self) {
        [self observeNetwork];
    }
    return self;
}

- (void)observeNetwork {
    AFNetworkReachabilityManager *reachabilityManager = [AFNetworkReachabilityManager sharedManager];
    [reachabilityManager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        self.status = status;
    }];
    [reachabilityManager startMonitoring];
}

#pragma mark put请求

+(void)ZhbPutWithURLString:(NSString *)URLString parameters:(id)parameters headerName:(NSString *)headername headerValue:(NSString *)headerValue success:(void (^)(id))success failure:(void (^)(NSError *))failure{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/html",@"application/json",@"text/javascript",@"text/json",@"text/plain", nil];
    
    // 设置请求头
    [manager.requestSerializer setValue:headerValue forHTTPHeaderField:@"Authorization"];
    manager.requestSerializer.timeoutInterval = TimeOut;
    [manager POST:URLString parameters:parameters progress:^(NSProgress * _Nonnull uploadProgress) {
        NSLog(@"...");
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingAllowFragments error:nil];
//        id result = [self ZhbHandleResult:dic];
        success(dic);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            failure(error);
        }
    }];
}

#pragma mark -- POST/GET网络请求 --
+ (void)ZhbRequestWithURLString:(NSString *)URLString
                  parameters:(id)parameters
                        type:(HttpRequestType)type
                     success:(void (^)(id))success
                     failure:(void (^)(NSString *))failure {
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/html",@"application/json",@"text/javascript",@"text/json",@"text/plain", nil];
    
    // 设置请求头
//    [manager.requestSerializer setValue:[UserManager shared].userModel.Token forHTTPHeaderField:@"Authorization"];
    manager.requestSerializer.timeoutInterval = TimeOut;
    if ([ZhbNetWorking sharedApi].status == AFNetworkReachabilityStatusNotReachable) {
        [manager.requestSerializer setTimeoutInterval:0];
    }
    switch (type) {
        case Get:
        {
            [manager GET:URLString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
                NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingAllowFragments error:nil];
            } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                if (failure) {
                    failure(error);
                }
            }];
        }
            break;
        case Post:
        {
            [manager POST:URLString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
                NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingAllowFragments error:nil];
            } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                if (failure) {
                    failure(error);
                }
            }];
        }
            break;
    }
}

#pragma mark -- 上传图片 --
+ (void)ZhbUploadWithURLString:(NSString *)URLString
                 parameters:(id)parameters
                uploadParam:(ZhbUploadParam *)uploadParam
                    success:(void (^)(id responseObject))success
                    failure:(void (^)(NSError *))failure {
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager POST:URLString parameters:parameters constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        [formData appendPartWithFileData:uploadParam.data name:uploadParam.name fileName:uploadParam.filename mimeType:uploadParam.mimeType];
    } progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingAllowFragments error:nil];
        if (success) {
            success(dic);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            failure(error);
        }
    }];
}

@end
