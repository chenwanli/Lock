//
//  LoginVC.m
//  Lock
//
//  Created by 陈万里 on 16/2/1.
//  Copyright © 2016年 chenwanli. All rights reserved.
//

#import "LoginVC.h"
#import "LogoinView.h"
@interface LoginVC ()

@end

@implementation LoginVC

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:NO];
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:NO];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    
    LogoinView *logoinView = [[LogoinView alloc]initWithFrame:self.view.bounds];
    logoinView.onViewController = self;
    [self.view addSubview:logoinView];
    
}



@end
