//
//  YGBaseTabBarController.m
//  YGQQ
//
//  Created by 许亚光 on 2016/10/27.
//  Copyright © 2016年 xuyaguang. All rights reserved.
//

#import "YGBaseTabBarController.h"
#import "YGBaseNavgationController.h"
#import "YGChatViewController.h"
#import "YGCallViewController.h"
#import "YGContactViewController.h"
#import "YGDynamicViewController.h"

@interface YGBaseTabBarController ()

@end

@implementation YGBaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
    [self addControllers];
}

// 布局
- (void)setupUI {
    self.view.backgroundColor = kWhiteColor;
    self.tabBar.tintColor = kBaseTabBarColor;
}

// 添加子控制器
- (void)addControllers {
    [self addChildVC:[[YGChatViewController alloc] init] title:@"消息" imageNamed:@"tab_recent_nor" selectImage:@"tab_recent_press"];
    [self addChildVC:[[YGContactViewController alloc] init] title:@"联系人" imageNamed:@"tab_buddy_nor" selectImage:@"tab_buddy_press"];
    [self addChildVC:[[YGDynamicViewController alloc] init] title:@"动态" imageNamed:@"tab_qworld_nor" selectImage:@"tab_qworld_press"];
}

// 添加控制器
-(void)addChildVC:(UIViewController *)childController title:(NSString *)title imageNamed:(NSString *)imageName selectImage:(NSString *)selectImageName{
    childController.title = title;
    childController.tabBarItem.image = [UIImage imageNamed:imageName];
    childController.tabBarItem.selectedImage = [[UIImage imageNamed:selectImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    YGBaseNavgationController *nav = [[YGBaseNavgationController alloc] initWithRootViewController:childController];
    [self addChildViewController:nav];
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
