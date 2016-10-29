//
//  YGDrawerHeaderView.h
//  YGQQ
//
//  Created by 许亚光 on 2016/10/27.
//  Copyright © 2016年 xuyaguang. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^HeaderViewClickEvent)(NSString *titleStr);
@interface YGDrawerHeaderView : UIView
@property(nonatomic, strong) NSTimer *timer;
@property(nonatomic, copy) HeaderViewClickEvent headerViewBlock;

@property(nonatomic, strong) NSString *uesrName;
@property(nonatomic, strong) UIImage  *userIcon;
@property(nonatomic, strong) NSString *userInfo;

@end
