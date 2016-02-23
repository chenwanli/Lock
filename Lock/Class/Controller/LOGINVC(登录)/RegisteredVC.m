//
//  RegisteredVC.m
//  Lock
//
//  Created by 陈万里 on 16/2/1.
//  Copyright © 2016年 chenwanli. All rights reserved.
//

#import "RegisteredVC.h"
#import "RegisteredView.h"
#import "LogAndRegisteredMode.h"
@interface RegisteredVC ()<RegisteredViewDelegate>

@end

@implementation RegisteredVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = RGB(231, 231, 231, 1);
    [self setNavLeftBtnTitle:@"注册"];
    
    
    
    
    
    RegisteredView *registeredView = [[RegisteredView alloc]initWithFrame:self.view.bounds];
    registeredView.delegate = self;
    [self.view addSubview:registeredView];
}

- (void)registeredViewDelegateData:(NSDictionary *)dict{
    
}

@end
