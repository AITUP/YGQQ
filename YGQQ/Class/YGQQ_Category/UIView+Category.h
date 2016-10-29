//
//  PK-ios
//  YGQQ
//
//  Created by 许亚光 on 2016/10/28.
//  Copyright © 2016年 xuyaguang. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIView (MotionEffect)
//UIMotionEffect和Home页背景视差效果
- (void) addCenterMotionEffectsXYWithOffset:(CGFloat)offset;
@end


@interface UIView (Window)

//把View加在Window上
- (void) addToWindow;

@end

@interface UIView (Screenshot)

//View截图
- (UIImage*) screenshot;

//ScrollView截图 contentOffset
- (UIImage*) screenshotForScrollViewWithContentOffset:(CGPoint)contentOffset;

//View按Rect截图
- (UIImage*) screenshotInFrame:(CGRect)frame;

@end



