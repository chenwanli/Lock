//
//  SetPwsConfirmVC.m
//  Lock
//
//  Created by 陈万里 on 16/2/2.
//  Copyright © 2016年 chenwanli. All rights reserved.
//

#import "SetPwsConfirmVC.h"
#import "SetPwsConfirmView.h"
@interface SetPwsConfirmVC ()

@end

@implementation SetPwsConfirmVC

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = RGB(231, 231, 231, 1);
    [self setNavLeftBtnTitle:@"密码设置"];
    
    
    
    
    
    SetPwsConfirmView *setPwsConfirmView = [[SetPwsConfirmView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:setPwsConfirmView];
}




@end
