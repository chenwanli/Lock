//
//  SetPwsVC.m
//  Lock
//
//  Created by 陈万里 on 16/2/2.
//  Copyright © 2016年 chenwanli. All rights reserved.
//

#import "SetPwsVC.h"
#import "SetPwsView.h"
@interface SetPwsVC ()

@end

@implementation SetPwsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = RGB(231, 231, 231, 1);
    [self setNavLeftBtnTitle:@"密码设置"];
    
    
    
    
    
    SetPwsView *setPwsView = [[SetPwsView alloc]initWithFrame:self.view.bounds];
    setPwsView.onViewController = self;
    [self.view addSubview:setPwsView];
}




@end
