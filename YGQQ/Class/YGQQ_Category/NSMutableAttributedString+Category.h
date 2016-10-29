//
//  NSMutableAttributedString+Category.h
//  YGQQ
//
//  Created by 许亚光 on 2016/10/28.
//  Copyright © 2016年 xuyaguang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIColor+BGHexColor.h"
@interface NSMutableAttributedString (Category)

//直接返回NSAttributedString
 
+ (NSAttributedString *)attributeStringWithPrefixString:(NSString *)prefixString
                                           suffixString:(NSString *)suffixString;


/**
 *  直接返回NSAttributedString
 *
 *  @param prefixString 前面的string
 *  @param prefixFont   字体大小
 *  @param prefixColor  字体颜色
 *  @param suffixString 后面拼接的string
 *  @param suffixFont   字体大小
 *  @param suffixColor  字体颜色
 *
 *  @return 直接返回NSAttributedString
 */
+ (NSAttributedString *)attributeStringWithPrefixString:(NSString *)prefixString
                                             prefixFont:(CGFloat)prefixFont
                                            prefixColor:(UInt32)prefixColor
                                           suffixString:(NSString *)suffixString
                                             suffixFont:(CGFloat)suffixFont
                                            suffixColor:(UInt32)suffixColor;

// string在前 图片在后

+ (NSMutableAttributedString *)attributeStringWithPrefixString:(NSString *)prefixString
                                              subffixImageName:(NSString *)subffixImageName;


//图片在前 string在后

+ (NSMutableAttributedString *)attributeStringWithSubffixString:(NSString *)subffixString
                                                prefixImageName:(NSString *)prefixImageName;


@end
