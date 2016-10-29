//
//  UIColor+UIColor+BGHexColor.h
//  YGQQ
//
//  Created by 许亚光 on 2016/10/28.
//  Copyright © 2016年 xuyaguang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (BGHexColor)

+ (UIColor *)colorWithHex:(uint)hex alpha:(CGFloat)alpha;

/**
 *  十六进制字符串转颜色
 */
+ (UIColor *)colorWithHexString:(NSString *)HexString;

+ (UIColor*) colorRGBonvertToHSB:(UIColor*)color withBrighnessDelta:(CGFloat)delta;

+ (UIColor*) colorRGBonvertToHSB:(UIColor*)color withAlphaDelta:(CGFloat)delta;

+ (UIColor*) colorWithHex:(NSInteger)hexValue;

@end
