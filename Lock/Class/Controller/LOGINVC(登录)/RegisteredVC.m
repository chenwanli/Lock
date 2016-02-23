//
//  RegisteredVC.m
//  Lock
//
//  Created by 陈万里 on 16/2/1.
//  Copyright © 2016年 chenwanli. All rights reserved.
//

#import "RegisteredVC.h"
#import "RegisteredView.h"

@interface RegisteredVC ()

@end

@implementation RegisteredVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = RGB(231, 231, 231, 1);
    [self setNavLeftBtnTitle:@"注册"];
    
    
    
    
    
    RegisteredView *registeredView = [[RegisteredView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:registeredView];
}



@end
