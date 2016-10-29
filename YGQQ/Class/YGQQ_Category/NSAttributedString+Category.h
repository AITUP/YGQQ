//
//  NSAttributedString+Category.h
//  YGQQ
//
//  Created by 许亚光 on 2016/10/28.
//  Copyright © 2016年 xuyaguang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSAttributedString (Category)
//由于系统计算富文本的高度不正确，自己写了方法
- (CGFloat)heightWithContainWidth:(CGFloat)width;
@end
