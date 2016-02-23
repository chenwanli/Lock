//
//  UINavigationController+CWLTurnScreen.h
//  GWg-mall
//
//  Created by 陈万里 on 15/12/1.
//  Copyright © 2015年 chenwanli. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (CWLTurnScreen)
/// 转屏**************************
- (BOOL)shouldAutorotate;

- (NSUInteger)supportedInterfaceOrientations;
@end
