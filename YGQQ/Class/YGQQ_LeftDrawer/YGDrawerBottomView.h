//
//  YGDrawerBottomView.h
//  YGQQ
//
//  Created by 许亚光 on 2016/10/29.
//  Copyright © 2016年 xuyaguang. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^bottomViewClickEvent)(NSString *titleStr);
typedef void(^alertView)(NSString *message);

@interface YGDrawerBottomView : UIView

@property(nonatomic, copy) bottomViewClickEvent bottomViewBlock;
@property(nonatomic, copy) alertView aleratBlock;
@property(nonatomic, strong) NSString *temperatureNumber;

@end
