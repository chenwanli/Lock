//
//  NetworkRequest.h
//  Lock
//
//  Created by 陈万里 on 16/2/23.
//  Copyright © 2016年 chenwanli. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkRequest : NSObject
/*
 注册
 */
+ (void)postRegisteredParameters:(NSDictionary *)parameters withBlock:(void(^)(NSDictionary *dict,NSError *error))block;
@end
