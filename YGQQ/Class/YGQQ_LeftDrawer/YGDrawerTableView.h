//
//  YGDrawerTableView.h
//  YGQQ
//
//  Created by 许亚光 on 2016/10/28.
//  Copyright © 2016年 xuyaguang. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^ClickEventBlock)(NSString *titleStr);

@interface YGDrawerTableView : UITableView
@property(nonatomic, copy) ClickEventBlock block;

@end
