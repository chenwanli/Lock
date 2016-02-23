//
//  UIView+CWLView.h
//  对象序列化封装
//
//  Created by 陈万里 on 16/1/21.
//  Copyright © 2016年 chenwanli. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (CWLView)
- (float)height;
- (float)width;
- (float)x;
- (float)y;
- (float)totalHeigth;
- (float)totalwidth;

@property(nonatomic,assign)float cwlRoundedCorners;//圆角
@property(nonatomic,assign)float cwlBorder;//边框
@end
