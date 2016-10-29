//
//  YGBaseNavgationController.m
//  YGQQ
//
//  Created by 许亚光 on 2016/10/27.
//  Copyright © 2016年 xuyaguang. All rights reserved.
//

#import "YGBaseNavgationController.h"

@interface YGBaseNavgationController ()

@end

@implementation YGBaseNavgationController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}

- (void)setupUI {
    [self setNav];
    UIImage *imge = [UIImage imageWithColor:kBaseTabBarColor size:CGSizeMake(414, 64)];
    [self.navigationBar setBackgroundImage:imge forBarMetrics:UIBarMetricsDefault];
}

- (void)setNav {
    UINavigationBar *bar = [UINavigationBar appearance];
    //设置显示的颜色
    bar.barTintColor = [UIColor colorWithRed:62/255.0 green:173/255.0 blue:176/255.0 alpha:1.0];
    //设置字体颜色
    bar.tintColor = [UIColor whiteColor];
    [bar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
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
