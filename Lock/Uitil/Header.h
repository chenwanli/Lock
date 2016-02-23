//
//  Header.h
//  Lock
//
//  Created by 陈万里 on 16/2/1.
//  Copyright © 2016年 chenwanli. All rights reserved.
//

#ifndef Header_h
#define Header_h

#define kDeviceHeight [UIScreen mainScreen].bounds.size.height// 获取屏幕高度
#define kDeviceWidth  [UIScreen mainScreen].bounds.size.width// 获取屏幕宽度
#define RGB(R,G,B,A) [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:A]
#define IMAGE(name) [UIImage imageNamed:name]
#define FONT(font) [UIFont systemFontOfSize:font]

#define IOS8 ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0 ? YES:NO)

#import "UIColor+Hexadecimal.h"

#import "Masonry.h"
#import "AppDelegate+CWLAppDelegate.h"
#import "UIViewController+CWLViewController.h"
#import "UIView+CWLView.h"
#import "NSString+CWLString.h"
#import "NSObject+CWLObjectMode.h"

#endif /* Header_h */
