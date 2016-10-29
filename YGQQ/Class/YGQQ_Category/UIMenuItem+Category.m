//
//  UIMenuItem+Category.m
//  YGQQ
//
//  Created by 许亚光 on 2016/10/28.
//  Copyright © 2016年 xuyaguang. All rights reserved.
//

#import "UIMenuItem+Category.h"
#import <objc/runtime.h>
static int UIMenuItem_key;

@implementation UIMenuItem (Category)

- (instancetype)initWithTitle:(NSString *)title actionBlock:(void (^)(id sender))block{
    self = [self initWithTitle:title action:@selector(invoke:)];
    objc_setAssociatedObject(self, &UIMenuItem_key, block, OBJC_ASSOCIATION_COPY_NONATOMIC);
    return self;
}

- (void)invoke:(id)sender {
    void(^block)() = objc_getAssociatedObject(self, &UIMenuItem_key);
    if(block){
        block();
    }
    
}
@end
