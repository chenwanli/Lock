//
//  UINavigationController+CWLTurnScreen.m
//  GWg-mall
//
//  Created by 陈万里 on 15/12/1.
//  Copyright © 2015年 chenwanli. All rights reserved.
//

#import "UINavigationController+CWLTurnScreen.h"

@implementation UINavigationController (CWLTurnScreen)
//返回最上层的子Controller的shouldAutorotate
//子类要实现屏幕旋转需重写该方法
- (BOOL)shouldAutorotate{
    return self.topViewController.shouldAutorotate;
}

//返回最上层的子Controller的supportedInterfaceOrientations
- (NSUInteger)supportedInterfaceOrientations{
    return self.topViewController.supportedInterfaceOrientations;
}
@end
