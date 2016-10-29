//
//  YGLeftDrawerViewController.m
//  YGQQ
//
//  Created by 许亚光 on 2016/10/27.
//  Copyright © 2016年 xuyaguang. All rights reserved.
//

#import "YGLeftDrawerViewController.h"
#import "YGDetailViewController.h"
#import "YGDrawerHeaderView.h"
#import "YGDrawerTableView.h"
#import "YGDrawerBottomView.h"
#import "YGDetailViewController.h"
#import "YGBaseTabBarController.h"
#import "YGBaseNavgationController.h"

@interface YGLeftDrawerViewController ()
@property(nonatomic, strong) UIImageView *backGroundView;
@property(nonatomic, strong) YGDrawerHeaderView *headerView;
@property(nonatomic, strong) YGDrawerTableView *drawerTableView;
@property(nonatomic, strong) YGDrawerBottomView *drawerBottomView;
@end

@implementation YGLeftDrawerViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
    
}

- (void)setupUI {
    self.view.backgroundColor = kWhiteColor;
    [self addHeaderVeiw];
    [self addTableView];
    [self addBottomView];
}

- (void)addHeaderVeiw {
    __weak typeof(self) weakSelf = self;
    self.headerView = [[YGDrawerHeaderView alloc] initWithFrame:CGRectMake(0, 0, kLeftDrawerW, 220)];
//    self.headerView.uesrName = @"自定义";
//    self.headerView.userInfo = @"哈哈哈哈哈哈哈哈哈哈哈";
    
    self.headerView.headerViewBlock = ^(NSString *titleStr){
        [weakSelf pushControllerWithTitle:titleStr animation:YES];
    };
    [self.view addSubview:self.headerView];
}

- (void)addTableView {
    __weak typeof(self) weakSelf = self;
    self.drawerTableView = [[YGDrawerTableView alloc] initWithFrame:CGRectMake(0, 220, kLeftDrawerW - 100, kScreenH - 220 - 50) style:UITableViewStylePlain];
    self.drawerTableView.block = ^(NSString *titleStr){
        [weakSelf pushControllerWithTitle:titleStr animation:YES];
    };
    [self.view addSubview:self.drawerTableView];
}

- (void)addBottomView {
    __weak typeof(self) weakSelf = self;
    self.drawerBottomView = [[YGDrawerBottomView alloc] initWithFrame:CGRectMake(0, kScreenH - 100, kLeftDrawerW, 100)];
    self.drawerBottomView.temperatureNumber = @"25";
    self.drawerBottomView.bottomViewBlock = ^(NSString *titleStr){
        [weakSelf pushControllerWithTitle:titleStr animation:YES];
    };
    self.drawerBottomView.aleratBlock = ^(NSString *message){
        [weakSelf showAlertViewWithMessage:message];
    };
    [self.view addSubview:self.drawerBottomView];
}

- (void)pushControllerWithTitle:(NSString *)title animation:(BOOL)animation {
    YGDetailViewController *controller = [[YGDetailViewController alloc] init];
    UITabBarController *tab = (YGBaseTabBarController *)self.mm_drawerController.centerViewController;
    UINavigationController *nav = (YGBaseNavgationController *)tab.selectedViewController;
    controller.hidesBottomBarWhenPushed = YES;
    controller.title = title;
    [nav pushViewController:controller animated:YES];
    [self.mm_drawerController closeDrawerAnimated:YES completion:^(BOOL finished) {
        [self.mm_drawerController setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeNone];
    }];
}

- (void)showAlertViewWithMessage:(NSString *)message {
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"提示" message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
    [alertVC addAction:action];
    [self presentViewController:alertVC animated:YES completion:nil];
}

- (void)viewDidAppear:(BOOL)animated {
    [self.headerView.timer fire];
}
- (void)viewWillDisappear:(BOOL)animated {
    [self.headerView.timer invalidate];
    self.headerView.timer = nil;
    NSLog(@"%@",@"定时器销毁");
}





@end
