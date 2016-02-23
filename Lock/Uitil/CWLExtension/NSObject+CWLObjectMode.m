//
//  NSObject+CWLObjectMode.m
//  对象序列化封装
//
//  Created by 陈万里 on 16/1/20.
//  Copyright © 2016年 chenwanli. All rights reserved.
//

#import "NSObject+CWLObjectMode.h"
#import <objc/runtime.h>
@implementation NSObject (CWLObjectMode)

#pragma mark - 对象序列化
//编码
- (void)encodeWithCoder:(NSCoder *)aCoder{
    NSDictionary *dict = [self properties_aps];
    
    for (NSString *dictKey in dict) {
        [aCoder encodeObject:dict[dictKey] forKey:dictKey];
    }
}

//解码
- (id)initWithCoder:(NSCoder *)aDecoder{
    id initC = [self init];
    NSArray *dicKeyArray = [self getAllProperties];
    for (int i = 0; i < dicKeyArray.count; i ++) {
        SEL setSel = [self creatSetterWithPropertyName:dicKeyArray[i]];
        
        if ([self respondsToSelector:setSel]) {
            [self performSelectorOnMainThread:setSel
                                   withObject:[aDecoder decodeObjectForKey:dicKeyArray[i]]
                                waitUntilDone:[NSThread isMainThread]];
        }
        
    }
    return initC;
}


#pragma mark - mode赋值
// mode类创建时 键名只能是小写
-(void) assginToPropertyWithDictionary: (NSDictionary *) data{
    
    if (![data isKindOfClass:[NSDictionary class]]) {
        NSLog(@"错误数据");
        return;
    }else if (data == nil || data.count == 0){
        NSLog(@"错误数据");
        return ;
    }
    
    NSArray *dicKey = [data allKeys];
    
    for (int i = 0; i < dicKey.count; i ++) {
        SEL setSel = [self creatSetterWithPropertyName:dicKey[i]];
        
        if ([self respondsToSelector:setSel]) {

            NSString  *value = [NSString stringWithFormat:@"%@", data[dicKey[i]]];
            [self performSelectorOnMainThread:setSel
                                   withObject:value
                                waitUntilDone:[NSThread isMainThread]];
        }

        else if ([dicKey[i] isEqualToString:@"default"] ){ //特别键名  与系统名重合
            SEL cwlSetSel = [self creatSetterWithPropertyName:@"cwldefault"];
            
            NSString  *value = [NSString stringWithFormat:@"%@", data[dicKey[i]]];
            [self performSelectorOnMainThread:cwlSetSel
                                   withObject:value
                                waitUntilDone:[NSThread isMainThread]];
        }else if ([dicKey[i] isEqualToString:@"id"] ){ //特别键名  与系统名重合
            SEL cwlSetSel = [self creatSetterWithPropertyName:@"idd"];
            
            NSString  *value = [NSString stringWithFormat:@"%@", data[dicKey[i]]];
            [self performSelectorOnMainThread:cwlSetSel
                                   withObject:value
                                waitUntilDone:[NSThread isMainThread]];
        }else if ([dicKey[i] isEqualToString:@"description"]){
            SEL cwlSetSel = [self creatSetterWithPropertyName:@"cdescription"];
            
            NSString  *value = [NSString stringWithFormat:@"%@", data[dicKey[i]]];
            [self performSelectorOnMainThread:cwlSetSel
                                   withObject:value
                                waitUntilDone:[NSThread isMainThread]];
            
        }
    }
}

+ (instancetype)modelWithDictionary: (NSDictionary *) data{
    id allocC = [self alloc];
    [allocC assginToPropertyWithDictionary:data];
    return allocC;
}

+(void)createJsonModelWithDictionary:(NSDictionary *)dict modelName:(NSString *)modelName{
    if(dict.count > 0){
        printf("\n@interface %s :NSObject\n",modelName.UTF8String);
        for (NSString *key in dict) {
            NSString *type = ([dict[key] isKindOfClass:[NSNumber class]])?@"NSNumber":@"NSString";
            printf("@property (nonatomic,copy) %s *%s;\n",type.UTF8String,key.UTF8String);
        }
        printf("@end\n");
    }
}


#pragma mark - 网路请求
- (void)postParameters:(NSDictionary *)parameters url:(NSString *)url viewController:(UIViewController *)vc withBlock:(void(^)(NSDictionary *dict,NSError *error))block{
//    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
//    manager.requestSerializer = [AFHTTPRequestSerializer serializer];
//    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
//    
//    NSMutableDictionary *parametersMutable = [NSMutableDictionary dictionary];
//    NSLog(@"请求数据－－－－%@",parameters);
//    
//    NewRSA *new = [[NewRSA alloc]init];
//    
//    for (NSString *key in parameters) {
//        NSArray *keyArray = [key componentsSeparatedByString:@"@"];
//        if (keyArray.count > 1) {
//            [parametersMutable setObject:[new hexStringFromString:parameters[key]] forKey:keyArray[0]];
//        }else{
//            [parametersMutable setObject:parameters[key] forKey:keyArray[0]];
//        }
//    }
//    
//    [manager POST:[NSString stringWithFormat:@"%@%@",HTTPServer_1,url] parameters:parametersMutable success:^(AFHTTPRequestOperation *operation, id responseObject) {
//        NSError *error;
//        NSDictionary *registerDict = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:&error];
//
//        if (block) {
//            block(registerDict,nil);
//        }
//        
//    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//        NSLog(@"url %@  Error: %@",url, error.userInfo);
//        if (block) {
//            block(nil,error);
//        }
//    }];
//    
//    //    中断网络请求
//    //    [manager.operationQueue cancelAllOperations];
}


- (void)postFiedParameters:(NSDictionary *)parameters url:(NSString *)url dataArray:(NSMutableArray *)dataArray viewController:(UIViewController *)vc withBlock:(void(^)(NSDictionary *dict,NSError *error))block{
//    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
//    manager.requestSerializer = [AFHTTPRequestSerializer serializer];
//    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
//    
//    NSMutableDictionary *parametersMutable = [NSMutableDictionary dictionary];
//    
//    NewRSA *new = [[NewRSA alloc]init];
//    for (NSString *key in parameters) {
//        NSArray *keyArray = [key componentsSeparatedByString:@"@"];
//        if (keyArray.count > 1) {
//            [parametersMutable setObject:[new hexStringFromString:parameters[key]] forKey:keyArray[0]];
//        }else{
//            [parametersMutable setObject:parameters[key] forKey:keyArray[0]];
//        }
//    }
//    
//    [manager POST:[NSString stringWithFormat:@"%@%@",HTTPServer_1,url] parameters:parametersMutable constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
//        
//        for (int i = 0; i < dataArray.count; i++) {
//            HomeData *homedata = dataArray[i];
//            if([homedata isKindOfClass:[HomeData class]]){
//                if (homedata.type == 1) {//语音
//                    //                [formData appendPartWithFormData:homedata.fliedData name:[NSString stringWithFormat:@"sound_url_%d",i]];
//                    [formData appendPartWithFileData:homedata.fliedData name:[NSString stringWithFormat:@"sound_url_%d",i] fileName:[NSString stringWithFormat:@"sound_url_%d",i] mimeType:@"voice/caf"];
//                }else{//图片
//                    //                [formData appendPartWithFormData:homedata.fliedData name:[NSString stringWithFormat:@"img_url_%d",i]];
//                    [formData appendPartWithFileData:homedata.fliedData name:[NSString stringWithFormat:@"img_url_%d",i] fileName:[NSString stringWithFormat:@"img_url_%d",i] mimeType:@"image/png"];
//                }
//            }else{
//                [formData appendPartWithFileData:dataArray[i] name:@"head_pic" fileName:@"head_pic" mimeType:@"image/png"];
//            }
//        }
//        
//    } success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {
//        NSError *error;
//        NSDictionary *registerDict = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:&error];
//        NSLog(@"url %@－－－JSON: %@",url, registerDict);
//        if([registerDict[@"status"] intValue] == 200){
//            
//        }else if ([registerDict[@"message"] isEqualToString:@"请重新登录!"]){
//            [vc loginVC];
//        }else if ([registerDict[@"message"] isEqualToString:@"token不存在或失效"]){
//            [vc loginVC];
//        }
//        
//        if (block) {
//            block(registerDict,nil);
//        }
//        
//    } failure:^(AFHTTPRequestOperation * _Nonnull operation, NSError * _Nonnull error) {
//        NSLog(@"url %@  Error: %@",url, error);
//        if (block) {
//            block(nil,error);
//        }
//    }];
}




#pragma mark - 数据整理
- (SEL) creatSetterWithPropertyName: (NSString *) propertyName{
    propertyName = [NSString stringWithFormat:@"set%@%@",[[propertyName substringToIndex:1] uppercaseString],[propertyName substringFromIndex:1]];
    //1.首字母大写
//    propertyName = propertyName.capitalizedString;

    //3.返回set方法
    return NSSelectorFromString(propertyName);
}

- (NSDictionary *)properties_aps{
    NSMutableDictionary *props = [NSMutableDictionary dictionary];
    unsigned int outCount, i;
    objc_property_t *properties = class_copyPropertyList([self class], &outCount);
    for (i = 0; i<outCount; i++){
        objc_property_t property = properties[i];
        const char* char_f =property_getName(property);
        NSString *propertyName = [NSString stringWithUTF8String:char_f];
        id propertyValue = [self valueForKey:(NSString *)propertyName];
        if (propertyValue) [props setObject:propertyValue forKey:propertyName];
    }
    free(properties);
    return props;
}

- (NSArray *)getAllProperties{
    u_int count;
    objc_property_t *properties  =class_copyPropertyList([self class], &count);
    NSMutableArray *propertiesArray = [NSMutableArray arrayWithCapacity:count];
    for (int i = 0; i<count; i++){
        const char* propertyName =property_getName(properties[i]);
        [propertiesArray addObject: [NSString stringWithUTF8String: propertyName]];
    }
    free(properties);
    return propertiesArray;
}


@end
