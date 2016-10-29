//
//  UIMenuItem+Category.h
//  YGQQ
//
//  Created by 许亚光 on 2016/10/28.
//  Copyright © 2016年 xuyaguang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIMenuItem (Category)
- (instancetype)initWithTitle:(NSString *)title actionBlock:(void (^)(id sender))block;
@end
