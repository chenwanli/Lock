//
//  SetPwsConfirmView.m
//  Lock
//
//  Created by 陈万里 on 16/2/2.
//  Copyright © 2016年 chenwanli. All rights reserved.
//

#import "SetPwsConfirmView.h"

@implementation SetPwsConfirmView

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self createUI];
    }
    return self;
}

- (void)createUI{
    
    UIView *codeView = [[UIView alloc]initWithFrame:CGRectMake(20, 80, kDeviceWidth - 40, 40)];
    codeView.cwlRoundedCorners = 5;
    codeView.cwlBorder = 0.5;
    [self addSubview:codeView];
    
    UITextField *codeField = [[UITextField alloc]initWithFrame:CGRectMake(0, 0, codeView.width - 95, 40)];
    codeField.placeholder = @"验证码";
    codeField.borderStyle = UITextBorderStyleRoundedRect;
    codeField.backgroundColor = [UIColor whiteColor];
    [codeView addSubview:codeField];
    
    UIButton *codeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    codeBtn.frame = CGRectMake(codeView.width - 100, 0, 100, 40);
    [codeBtn setTitle:@"获取验证码" forState:UIControlStateNormal];
    codeBtn.backgroundColor = RGB(20, 138, 199, 1);
    codeBtn.titleLabel.font = FONT(12);
    [codeBtn addTarget:self action:@selector(confirmBtn) forControlEvents:UIControlEventTouchUpInside];
    [codeView addSubview:codeBtn];

    
    UITextField *pwsField = [[UITextField alloc]initWithFrame:CGRectMake(20, codeView.totalHeigth + 20, (kDeviceWidth - 40), 40)];
    pwsField.placeholder = @"密码";
    pwsField.backgroundColor = [UIColor whiteColor];
    pwsField.borderStyle = UITextBorderStyleRoundedRect;
    [self addSubview:pwsField];
    
    UITextField *pwsConfirmField = [[UITextField alloc]initWithFrame:CGRectMake(20, pwsField.totalHeigth + 20, (kDeviceWidth - 40), 40)];
    pwsConfirmField.placeholder = @"确认密码";
    pwsConfirmField.backgroundColor = [UIColor whiteColor];
    pwsConfirmField.borderStyle = UITextBorderStyleRoundedRect;
    [self addSubview:pwsConfirmField];
    
    UIButton *confirmBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    confirmBtn.frame = CGRectMake(20, pwsConfirmField.totalHeigth + 20, (kDeviceWidth - 40), 40);
    [confirmBtn setTitle:@"确定" forState:UIControlStateNormal];
    confirmBtn.backgroundColor = RGB(20, 138, 199, 1);
    confirmBtn.cwlRoundedCorners = 5;
    [confirmBtn addTarget:self action:@selector(confirmBtn) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:confirmBtn];
    
}

- (void)confirmBtn{
    NSLog(@"确定");
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self endEditing:YES];
}
@end
