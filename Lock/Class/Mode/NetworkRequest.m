//
//  NetworkRequest.m
//  Lock
//
//  Created by 陈万里 on 16/2/23.
//  Copyright © 2016年 chenwanli. All rights reserved.
//

#import "NetworkRequest.h"

//登录注册
#define LOG @"login.action"                         //登录
#define REGISTERED @"register.action"               //注册

#define FORGETPASSWORD @"forgetPassword.action"     //忘记密码

#define COMFIRMCHECKCODE @"comfirmCheckCode.action" //动态码

#define ADDATTEND @"addAttend.action"               //添加随从人员
#define UPDATEATTEND @"updateAttend.action"         //更新随从人员


@implementation NetworkRequest
//登录
+ (void)postLogParameters:(NSDictionary *)parameters withBlock:(void(^)(NSDictionary *dict,NSError *error))block{
    
    [self getParameters:parameters url:LOG withBlock:^(NSDictionary *dict, NSError *error) {
        if (block) {
            block(dict,error);
        }
    }];
}


//注册
+ (void)postRegisteredParameters:(NSDictionary *)parameters withBlock:(void(^)(NSDictionary *dict,NSError *error))block{
    
    [self getParameters:parameters url:REGISTERED withBlock:^(NSDictionary *dict, NSError *error) {
        if (block) {
            block(dict,error);
        }
    }];
}

//忘记密码
+ (void)postForgetPasswordParameters:(NSDictionary *)parameters withBlock:(void(^)(NSDictionary *dict,NSError *error))block{
    
    [self getParameters:parameters url:FORGETPASSWORD withBlock:^(NSDictionary *dict, NSError *error) {
        if (block) {
            block(dict,error);
        }
    }];
}

//动态码
+ (void)postComfirmCheckCodeParameters:(NSDictionary *)parameters withBlock:(void(^)(NSDictionary *dict,NSError *error))block{
    
    [self getParameters:parameters url:COMFIRMCHECKCODE withBlock:^(NSDictionary *dict, NSError *error) {
        if (block) {
            block(dict,error);
        }
    }];
}

//添加随从人员
+ (void)postAddAttendParameters:(NSDictionary *)parameters withBlock:(void(^)(NSDictionary *dict,NSError *error))block{
    
    [self getParameters:parameters url:ADDATTEND withBlock:^(NSDictionary *dict, NSError *error) {
        if (block) {
            block(dict,error);
        }
    }];
}

//更新随从人员
+ (void)postUpdateAttendParameters:(NSDictionary *)parameters withBlock:(void(^)(NSDictionary *dict,NSError *error))block{
    
    [self getParameters:parameters url:UPDATEATTEND withBlock:^(NSDictionary *dict, NSError *error) {
        if (block) {
            block(dict,error);
        }
    }];
}
@end
