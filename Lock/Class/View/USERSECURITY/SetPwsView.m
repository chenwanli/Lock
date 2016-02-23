//
//  SetPwsView.m
//  Lock
//
//  Created by 陈万里 on 16/2/2.
//  Copyright © 2016年 chenwanli. All rights reserved.
//

#import "SetPwsView.h"
#import "SetPwsConfirmVC.h"
@implementation SetPwsView

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
     
        [self createUI];
        
    }
    return self;
}


- (void)createUI{
    
    UITextField *textField = [[UITextField alloc]initWithFrame:CGRectMake(20, 80, (kDeviceWidth - 40), 40)];
    
    textField.placeholder = @"手机号码/邮箱";
    textField.backgroundColor = [UIColor whiteColor];
    textField.borderStyle = UITextBorderStyleRoundedRect;
    [self addSubview:textField];
    
    
    UIButton *nextBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    nextBtn.frame = CGRectMake(20, textField.totalHeigth + 20, (kDeviceWidth - 40), 40);
    [nextBtn setTitle:@"下一步" forState:UIControlStateNormal];
    nextBtn.backgroundColor = RGB(20, 138, 199, 1);
    nextBtn.cwlRoundedCorners = 5;
    [nextBtn addTarget:self action:@selector(nextBtn) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:nextBtn];
    
    
    
}


- (void)nextBtn{
    SetPwsConfirmVC *setPwsConfirmVC = [[SetPwsConfirmVC alloc]init];
    [self.onViewController.navigationController pushViewController:setPwsConfirmVC animated:YES];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self endEditing:YES];
}
@end
