//
//  UIViewController+CWLViewController.m
//  对象序列化封装
//
//  Created by 陈万里 on 16/1/21.
//  Copyright © 2016年 chenwanli. All rights reserved.
//

#import "UIViewController+CWLViewController.h"

@implementation UIViewController (CWLViewController)

- (void)setNavLeftBtnTitle:(NSString *)title{
    UIButton * addBtn=[UIButton buttonWithType:UIButtonTypeCustom];
    addBtn.frame=CGRectMake(0, 0, 60, 30);
    [addBtn setImage:[UIImage imageNamed:@"btn_back_white_normal"] forState:UIControlStateNormal];
    addBtn.imageEdgeInsets = UIEdgeInsetsMake(5, -30, 5, 20);
    [addBtn addTarget:self action:@selector(addBtnClick) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem * rightBarButton = [[UIBarButtonItem alloc] initWithCustomView:addBtn];
    [self.navigationItem setLeftBarButtonItem:rightBarButton];
    
    UILabel *navTitleLable = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 30)];
    navTitleLable.textAlignment = 1;
    navTitleLable.text = title;
    navTitleLable.textColor = [UIColor whiteColor];
    navTitleLable.font = FONT(20);
    self.navigationItem.titleView = navTitleLable;

}

- (void)addBtnClick{
    [self.navigationController popViewControllerAnimated:YES];
}
@end
