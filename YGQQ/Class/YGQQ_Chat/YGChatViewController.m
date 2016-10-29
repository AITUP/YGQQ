//
//  YGChatViewController.m
//  YGQQ
//
//  Created by 许亚光 on 2016/10/27.
//  Copyright © 2016年 xuyaguang. All rights reserved.
//

#import "YGChatViewController.h"

@interface YGChatViewController ()

@end

@implementation YGChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}

- (void)setupUI {
    self.view.backgroundColor = kWhiteColor;
    
}



// 圆形图片
- (UIImage *)getCircleImageWithImageName:(NSString *)imageName size:(CGSize)size {
    
    UIImage *oldImage = [UIImage imageNamed:imageName];
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0);// 开启图形上下文
    CGContextRef ctr = UIGraphicsGetCurrentContext();// 获取上下文
    
    CGRect rect = CGRectMake(0, 0, size.width, size.height);// 设置圆形
    CGContextAddEllipseInRect(ctr, rect);
    
    CGContextClip(ctr);// 裁剪
    [oldImage drawInRect:rect];// 将图片画上去
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();// 获取新的图片
    UIGraphicsEndImageContext();// 关闭图形上下文
    return newImage;
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
