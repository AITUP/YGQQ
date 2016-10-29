//
//  NSString+DisplayTime.h
//  YGQQ
//
//  Created by 许亚光 on 2016/10/28.
//  Copyright © 2016年 xuyaguang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (DisplayTime)

//通过时间戳计算时间差（几小时前、几天前）
+ (NSString *) compareCurrentTime:(NSTimeInterval) compareDate;

//通过时间戳得出显示时间
+ (NSString *) getDateStringWithTimestamp:(NSTimeInterval)timestamp;

//通过时间戳和格式显示时间
+ (NSString *) getStringWithTimestamp:(NSTimeInterval)timestamp formatter:(NSString*)formatter;
@end
