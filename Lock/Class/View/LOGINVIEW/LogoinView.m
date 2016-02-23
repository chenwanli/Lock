//
//  LogoinView.m
//  Lock
//
//  Created by 陈万里 on 16/2/1.
//  Copyright © 2016年 chenwanli. All rights reserved.
//

#import "LogoinView.h"
//#import "<#header#>"
@implementation LogoinView

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self createUI];
    
    }
    return self;
}


- (void)createUI{
    UILabel *loginTitle = [[UILabel alloc]initWithFrame:CGRectMake(0, 100, kDeviceWidth, 30)];
    loginTitle.text = @"用户登录";
    loginTitle.textAlignment = 1;
    loginTitle.font = FONT(30);
    loginTitle.textColor = [UIColor whiteColor];
    [self addSubview:loginTitle];
    
    UITextField *phoneField = [[UITextField alloc]initWithFrame:CGRectMake(10, loginTitle.totalHeigth + 50, (kDeviceWidth - 20), 40)];
    phoneField.placeholder = @"手机号码";
    phoneField.textAlignment = 1;
    phoneField.textColor = [UIColor whiteColor];
    [phoneField setValue:[UIColor whiteColor] forKeyPath:@"_placeholderLabel.textColor"];
    phoneField.cwlBorder = 0.5;
    phoneField.cwlRoundedCorners = 20;
    [self addSubview:phoneField];
    
    UITextField *pawField = [[UITextField alloc]initWithFrame:CGRectMake(10, phoneField.totalHeigth + 10, (kDeviceWidth - 20), 40)];
    pawField.placeholder = @"密码";
    pawField.textAlignment = 1;
    pawField.cwlBorder = 0.5;
    pawField.cwlRoundedCorners = 20;
    pawField.textColor = [UIColor whiteColor];
    [pawField setValue:[UIColor whiteColor] forKeyPath:@"_placeholderLabel.textColor"];
    [self addSubview:pawField];
    
    UIButton *loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    loginBtn.frame = CGRectMake(50, pawField.totalHeigth + 20, (kDeviceWidth - 100), 40);
    [loginBtn setTitle:@"登录" forState:UIControlStateNormal];
    loginBtn.backgroundColor = RGB(20, 138, 199, 1);
    loginBtn.cwlRoundedCorners = 20;
    [loginBtn addTarget:self action:@selector(loginBtn) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:loginBtn];
    
    
    for (int i = 0; i < 2; i ++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:@[@"我要注册",@"忘记密码?"][i] forState:UIControlStateNormal];
        button.titleLabel.font = FONT(12);
        button.tag = i;
        [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button];
        
        if (i == 0) {
            button.frame = CGRectMake(kDeviceWidth / 2 - 80, loginBtn.totalHeigth + 20, 80, 30);
            
            UIImageView *separatorImg = [[UIImageView alloc]initWithFrame:CGRectMake(kDeviceWidth / 2, button.y + 10, 1,button.height - 20)];
            separatorImg.backgroundColor = [UIColor colorWithHexCodeCWL:@"#ADADAD"];
            [self addSubview:separatorImg];
        }else{
            button.frame = CGRectMake(kDeviceWidth / 2, loginBtn.totalHeigth + 20, 80, 30);
        }
        
    }
}

- (void)loginBtn{
    NSLog(@"登录");
    AppDelegate *app = [UIApplication sharedApplication].delegate;
    [app home];
}

- (void)buttonClick:(UIButton *)sender{
    if (sender.tag == 0) {
        RegisteredVC *registeredVC = [[RegisteredVC alloc]init];
        [self.onViewController.navigationController pushViewController:registeredVC animated:YES];
    }else{
        SetPwsVC *setPwsVC = [[SetPwsVC alloc]init];
        [self.onViewController.navigationController pushViewController:setPwsVC animated:YES];
    }
}


- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self endEditing:YES];
}
@end
