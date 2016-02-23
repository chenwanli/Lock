//
//  NetworkRequest.m
//  Lock
//
//  Created by 陈万里 on 16/2/23.
//  Copyright © 2016年 chenwanli. All rights reserved.
//

#import "NetworkRequest.h"

//登录注册
#define LOG @""
#define REGISTERED @"register.action"

@implementation NetworkRequest
//登录
+ (void)postLogParameters:(NSDictionary *)parameters withBlock:(void(^)(NSDictionary *dict,NSError *error))block{
    
    [self postParameters:parameters url:LOG withBlock:^(NSDictionary *dict, NSError *error) {
        if (block) {
            block(dict,error);
        }
    }];
}


//注册
+ (void)postRegisteredParameters:(NSDictionary *)parameters withBlock:(void(^)(NSDictionary *dict,NSError *error))block{
    
    [self postParameters:parameters url:REGISTERED withBlock:^(NSDictionary *dict, NSError *error) {
        if (block) {
            block(dict,error);
        }
    }];
}
@end
