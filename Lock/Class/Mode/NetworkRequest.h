//
//  NetworkRequest.h
//  Lock
//
//  Created by 陈万里 on 16/2/23.
//  Copyright © 2016年 chenwanli. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkRequest : NSObject

/**
 登录
 */
+ (void)postLogParameters:(NSDictionary *)parameters withBlock:(void(^)(NSDictionary *dict,NSError *error))block;

/**
 注册
 */
+ (void)postRegisteredParameters:(NSDictionary *)parameters withBlock:(void(^)(NSDictionary *dict,NSError *error))block;

/**
 忘记密码
 */
+ (void)postForgetPasswordParameters:(NSDictionary *)parameters withBlock:(void(^)(NSDictionary *dict,NSError *error))block;

/**
 动态码
 */
+ (void)postComfirmCheckCodeParameters:(NSDictionary *)parameters withBlock:(void(^)(NSDictionary *dict,NSError *error))block;

/**
 添加随从人员
 */
+ (void)postAddAttendParameters:(NSDictionary *)parameters withBlock:(void(^)(NSDictionary *dict,NSError *error))block;

/**
 更新随从人员
 */
+ (void)postUpdateAttendParameters:(NSDictionary *)parameters withBlock:(void(^)(NSDictionary *dict,NSError *error))block;

@end
