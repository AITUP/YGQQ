//
//  UIView+Animation.h
//  YGQQ
//
//  Created by 许亚光 on 2016/10/28.
//  Copyright © 2016年 xuyaguang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Animation)
@property(nonatomic,copy)void(^completeBlock)();

- (void) shakeAnimation;

- (void) springingAnimation;

- (void) trans180DegreeAnimation;

- (void) throwFrom:(CGPoint)start to:(CGPoint)end height:(CGFloat)height
          duration:(CGFloat)duration completedBlock:(void(^)())completedBlock;

- (void) praiseAnimation;
@end
