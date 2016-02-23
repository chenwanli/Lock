//
//  ViewController.m
//  Lock
//
//  Created by 陈万里 on 16/1/28.
//  Copyright © 2016年 chenwanli. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    AppDelegate *app = [UIApplication sharedApplication].delegate;
    [app login];
}




@end
