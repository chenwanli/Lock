//
//  RegisteredView.m
//  Lock
//
//  Created by 陈万里 on 16/2/1.
//  Copyright © 2016年 chenwanli. All rights reserved.
//

#import "RegisteredView.h"
@implementation RegisteredView

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        
        [self createUI];
        
    }
    return self;
}


- (void)createUI{

    for (int i = 0; i < 3; i++) {
        UITextField *textField = [[UITextField alloc]initWithFrame:CGRectMake(20, 80 + i * 50, (kDeviceWidth - 40), 40)];
        
        textField.placeholder = @[@"昵称",@"请输入密码",@"请再次输入密码"][i];
        textField.backgroundColor = [UIColor whiteColor];
        textField.borderStyle = UITextBorderStyleRoundedRect;
        textField.tag = 100 + i;
        [self addSubview:textField];
    }
    
    UIButton *resistereBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    resistereBtn.frame = CGRectMake(20, 240, (kDeviceWidth - 40), 40);
    [resistereBtn setTitle:@"注册完成" forState:UIControlStateNormal];
    resistereBtn.backgroundColor = RGB(20, 138, 199, 1);
    resistereBtn.cwlRoundedCorners = 5;
    [resistereBtn addTarget:self action:@selector(resistereBtn) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:resistereBtn];
    
    
    
}

#pragma makr - 注册
- (void)resistereBtn{
    [self endEditing:YES];
    NSLog(@"注册");
    UITextField *nameField = (UITextField *)[self viewWithTag:100];
    UITextField *pswField = (UITextField *)[self viewWithTag:101];
    
    [NetworkRequest postRegisteredParameters:@{@"userName":@"18389473257",@"userNicName":nameField.text,@"password":pswField.text} withBlock:^(NSDictionary *dict, NSError *error) {
        
        NSLog(@"－－－－－－%@",dict);
    }];
}


- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self endEditing:YES];
}
@end
