//
//  YGDrawerBottomView.m
//  YGQQ
//
//  Created by 许亚光 on 2016/10/29.
//  Copyright © 2016年 xuyaguang. All rights reserved.
//

#define kLableFont 15

#import "YGDrawerBottomView.h"

@interface YGDrawerBottomView ()

@property(nonatomic, strong) UIImageView    *settingImgView;
@property(nonatomic, strong) UIButton       *settingBtn;
@property(nonatomic, strong) UIImageView    *skinConvertImgView;
@property(nonatomic, strong) UIButton       *skinConvertBtn;
@property(nonatomic, strong) UILabel        *addressLable;
@property(nonatomic, strong) UIImageView    *circleImgView;
@property(nonatomic, strong) UILabel        *temperatureLable;
@end
@implementation YGDrawerBottomView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI {
    
    self.clipsToBounds = YES;
    
    self.settingImgView = [[UIImageView alloc] init];
    self.settingImgView.image = [UIImage imageNamed:@"sidebar_setting"];
    [self addSubview:self.settingImgView];
    
    self.settingBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.settingBtn setTitle:@"设置" forState:UIControlStateNormal];
    [self.settingBtn setTintColor:kBlackColor];
    self.settingBtn.titleLabel.font = Font(kLableFont);
    self.settingBtn.tag = 30001;
    [self.settingBtn addTarget:self action:@selector(clickEvent:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.settingBtn];
    
    self.skinConvertImgView = [[UIImageView alloc] init];
    self.skinConvertImgView.image = [UIImage imageNamed:@"sidebar_nightmode_off"];
    [self addSubview:self.skinConvertImgView];
    
    self.skinConvertBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.skinConvertBtn setTitle:@"夜间" forState:UIControlStateNormal];
    [self.skinConvertBtn setTitle:@"白天" forState:UIControlStateSelected];
    [self.skinConvertBtn setTintColor:kBlackColor];
    self.skinConvertBtn.titleLabel.font = Font(kLableFont);
    self.skinConvertBtn.tag = 30002;
    [self.skinConvertBtn addTarget:self action:@selector(clickEvent:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.skinConvertBtn];
    
    self.addressLable = [[UILabel alloc] init];
    self.addressLable.text = @"北京";
    self.addressLable.textColor = kBlackColor;
    self.addressLable.font = Font(kLableFont);
    [self addSubview:self.addressLable];
    
    self.circleImgView = [[UIImageView alloc] init];
    self.circleImgView.image = [UIImage imageNamed:@"sidebar_temperature"];
    [self addSubview:self.circleImgView];
    
    self.temperatureLable = [[UILabel alloc] init];
    self.temperatureLable.text = @"15";
    self.temperatureLable.textColor = kBaseTabBarColor;
    self.temperatureLable.font = Font(40);
    self.temperatureLable.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickEvent:)];
    [self.temperatureLable addGestureRecognizer:tap];
    [self addSubview:self.temperatureLable];
    
}

- (void)clickEvent:(id)tap {
    if (!self.bottomViewBlock) {
        return;
    }
    if ([tap isKindOfClass:[UITapGestureRecognizer class]]) {
        self.bottomViewBlock(@"天气");
    } else if ([tap isMemberOfClass:[UIButton class]]) {
        UIButton *btn = tap;
        if (btn.tag == 30001) {
            self.bottomViewBlock(@"设置");
        } else if (btn.tag == 30002) {
//            self.bottomViewBlock(@"换肤");
            [self skinConvertEvent];
        }
    }
}

- (void)skinConvertEvent {
    if (!self.aleratBlock) {
        return;
    }
    if (self.skinConvertBtn.selected) {
        self.skinConvertBtn.selected = NO;
        self.aleratBlock(@"已切换为白天模式!\n哈哈哈哈!!!");
    } else {
        self.skinConvertBtn.selected = YES;
        self.aleratBlock(@"已切换为夜间模式!\n只是没有皮肤而已!\n哈哈哈哈!!!");
    }
}


- (void)setTemperatureNumber:(NSString *)temperatureNumber {
    _temperatureNumber = temperatureNumber;
    self.temperatureLable.text = temperatureNumber;
}




- (void)layoutSubviews {
    [super layoutSubviews];
    
    [self.settingImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(self).offset(-20);
        make.left.mas_equalTo(self).offset(20);
        make.size.mas_equalTo(CGSizeMake(20, 20));
    }];
    
    [self.settingBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.settingImgView.mas_right).offset(5);
        make.centerY.mas_equalTo(self.settingImgView);
    }];
    
    [self.skinConvertImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.settingBtn).offset(80);
        make.size.mas_equalTo(CGSizeMake(20, 20));
        make.centerY.mas_equalTo(self.settingImgView);
    }];
    
    [self.skinConvertBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.skinConvertImgView.mas_right).offset(5);
        make.centerY.mas_equalTo(self.settingImgView);
    }];
    
    [self.addressLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(self.settingImgView);
        make.right.mas_equalTo(self).offset(-40);
    }];
    
    [self.temperatureLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(self.addressLable.mas_top).offset(-0);
        make.centerX.mas_equalTo(self.addressLable);
    }];
    
    [self.circleImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.temperatureLable.mas_right);
        make.size.mas_equalTo(CGSizeMake(8, 8));
        make.bottom.mas_equalTo(self.temperatureLable.mas_top).offset(10);
    }];
    
}



@end
