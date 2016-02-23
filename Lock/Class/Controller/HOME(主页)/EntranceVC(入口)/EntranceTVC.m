//
//  EntranceTVC.m
//  Lock
//
//  Created by 陈万里 on 16/2/4.
//  Copyright © 2016年 chenwanli. All rights reserved.
//

#import "EntranceTVC.h"
#import "EquipmentVC.h"
#import "PersonalVC.h"
@interface EntranceTVC ()

@end

@implementation EntranceTVC

- (void)viewDidLoad {
    [super viewDidLoad];
    EquipmentVC *equipmentVC = [[EquipmentVC alloc]init];
    UINavigationController *nav1 = [[UINavigationController alloc]initWithRootViewController:equipmentVC];
    nav1.navigationBar.hidden = YES;
    nav1.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"设备" image:nil tag:0];
    
    PersonalVC *personalVC = [[PersonalVC alloc]init];
    UINavigationController *nav2 = [[UINavigationController alloc]initWithRootViewController:personalVC];
    nav2.navigationBar.hidden = YES;
    nav2.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"个人" image:nil tag:0];
    
    self.viewControllers = @[nav1,nav2];
    
//    UIImageView *barImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, kDeviceHeight - 54, kDeviceWidth, 54)];
////    barImg.image = IMG(@"底部2");
//    barImg.backgroundColor = [UIColor grayColor];
//    [self.view addSubview:barImg];
    
    float widtht = kDeviceWidth / 2;
    for (int i = 0; i < 2; i ++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(i * widtht, kDeviceHeight - 44, widtht, 44);
        [self.view addSubview:button];
        button.tag = i;
        [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake((button.width - 25) / 2, 5, 25, 34)];
        img.image = [UIImage imageNamed:[NSString stringWithFormat:@"D%d",i + 1]];
        [button addSubview:img];
    }
    

}

- (void)buttonClick:(UIButton *)sender{
    self.selectedIndex = sender.tag;
}


@end
