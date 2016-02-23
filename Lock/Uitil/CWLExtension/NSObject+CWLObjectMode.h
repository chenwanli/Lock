//
//  NSObject+CWLObjectMode.h
//  对象序列化封装
//
//  Created by 陈万里 on 16/1/20.
//  Copyright © 2016年 chenwanli. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSObject (CWLObjectMode)
/*
 mode赋值
 */
+ (instancetype)modelWithDictionary: (NSDictionary *) data;

/*
 mode编写
 */
+(void)createJsonModelWithDictionary:(NSDictionary *)dict modelName:(NSString *)modelName;

//  网络请求
/*
 1、普通网络请求
 2、参数加密请在参数后面加@  @{@"chen@":@"chen"}
 */
- (void)postParameters:(NSDictionary *)parameters url:(NSString *)url viewController:(UIViewController *)vc withBlock:(void(^)(NSDictionary *dict,NSError *error))block;

/*
 带图片数据上传
 */
- (void)postFiedParameters:(NSDictionary *)parameters url:(NSString *)url dataArray:(NSMutableArray *)dataArray viewController:(UIViewController *)vc withBlock:(void(^)(NSDictionary *dict,NSError *error))block;
@end
