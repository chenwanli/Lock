//
//  RegisteredView.h
//  Lock
//
//  Created by 陈万里 on 16/2/1.
//  Copyright © 2016年 chenwanli. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RegisteredViewDelegate <NSObject>

- (void)registeredViewDelegateData:(NSDictionary *)dict;

@end

@interface RegisteredView : UIView
@property(nonatomic,strong)id <RegisteredViewDelegate> delegate;
@end
