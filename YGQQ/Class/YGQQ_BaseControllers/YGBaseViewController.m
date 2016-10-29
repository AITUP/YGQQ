//
//  YGBaseViewController.m
//  YGQQ
//
//  Created by 许亚光 on 2016/10/27.
//  Copyright © 2016年 xuyaguang. All rights reserved.
//

#import "YGBaseViewController.h"

@interface YGBaseViewController ()
@property(nonatomic, assign) BOOL isOpenDrawer;
@end

@implementation YGBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    backBtn.frame = CGRectMake(0, 0, 35, 35);
    UIImage *img = [UIImage getCircleImageWithImageName:@"icon_02.png" size:CGSizeMake(44, 44)];
    [backBtn setImage:img forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(leftDrawer) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
    self.navigationItem.leftBarButtonItem = backItem;
    
    
}

- (void)leftDrawer {
    __weak typeof(self) weekSelf = self;
    if (self.isOpenDrawer) {
        [self.mm_drawerController closeDrawerAnimated:YES completion:^(BOOL finished) {
            weekSelf.isOpenDrawer = NO;
        }];
    } else {
        [self.mm_drawerController openDrawerSide:MMDrawerSideLeft animated:YES completion:^(BOOL finished) {
            weekSelf.isOpenDrawer = YES;
        }];
    }
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
