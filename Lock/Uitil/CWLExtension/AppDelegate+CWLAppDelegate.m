//
//  AppDelegate+CWLAppDelegate.m
//  Lock
//
//  Created by 陈万里 on 16/2/1.
//  Copyright © 2016年 chenwanli. All rights reserved.
//

#import "AppDelegate+CWLAppDelegate.h"
#import "LoginVC.h"
#import "EntranceTVC.h"
@implementation AppDelegate (CWLAppDelegate)
//登录
- (void)login{
    LoginVC *loginVC = [[LoginVC alloc]init];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:loginVC];
    self.window.rootViewController = nav;
    
    if (IOS8) {
        nav.navigationBar.barTintColor = RGB(0, 0, 201, 1);
    }else{
        [[UINavigationBar appearance] setTintColor:RGB(0, 0, 20, 1)];
    }
    
}

//主界面
- (void)home{
    [UIView animateWithDuration:0.5 animations:^{
        EntranceTVC *entranceTVC = [[EntranceTVC alloc]init];
        self.window.rootViewController = entranceTVC;
    }];
    
}
@end
