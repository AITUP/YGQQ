//
//  YGDetailViewController.m
//  YGQQ
//
//  Created by 许亚光 on 2016/10/27.
//  Copyright © 2016年 xuyaguang. All rights reserved.
//

#import "YGDetailViewController.h"
#import "YGBaseTabBarController.h"
@interface YGDetailViewController ()

@end

@implementation YGDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = kRandomColor;
}
- (void)viewWillAppear:(BOOL)animated{
    [self.mm_drawerController setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeNone];
    [super viewWillAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    UITabBarController *tab = (YGBaseTabBarController *)self.mm_drawerController.centerViewController;
    [tab.mm_drawerController setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeAll];
    [tab.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
    [super viewWillDisappear:animated];
}

@end
