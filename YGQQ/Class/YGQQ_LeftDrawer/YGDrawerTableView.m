//
//  YGDrawerTableView.m
//  YGQQ
//
//  Created by 许亚光 on 2016/10/28.
//  Copyright © 2016年 xuyaguang. All rights reserved.
//

#import "YGDrawerTableView.h"
@interface YGDrawerTableView ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation YGDrawerTableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    self = [super initWithFrame:frame style:style];
    if (self) {
        [self setupUI];
}
    return self;
}

- (void)setupUI {
    self.delegate = self;
    self.dataSource = self;
    self.separatorColor = [UIColor clearColor];
    self.backgroundColor = kWhiteColor;
    self.contentInset = UIEdgeInsetsMake(20, 0, 0, 0);
    self.showsVerticalScrollIndicator = NO;
    self.showsHorizontalScrollIndicator = NO;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 7;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *ID = @"leftDrawerCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.backgroundColor = kClearColor;
    cell.textLabel.textColor = [UIColor blackColor];
    if (indexPath.row == 0) {
        cell.imageView.image = [UIImage imageNamed:@"vip_shadow"];
        cell.textLabel.text = @"了解会员特权";
    } else if (indexPath.row == 1) {
        cell.imageView.image = [UIImage imageNamed:@"sidebar_purse"];
        cell.textLabel.text = @"QQ钱包";
    } else if (indexPath.row == 2) {
        cell.imageView.image = [UIImage imageNamed:@"sidebar_decoration"];
        cell.textLabel.text = @"个性装扮";
    } else if (indexPath.row == 3) {
        cell.imageView.image = [UIImage imageNamed:@"sidebar_favorit"];
        cell.textLabel.text = @"我的收藏";
    } else if (indexPath.row == 4) {
        cell.imageView.image = [UIImage imageNamed:@"sidebar_album"];
        cell.textLabel.text = @"我的相册";
    } else if (indexPath.row == 5) {
        cell.imageView.image = [UIImage imageNamed:@"sidebar_file"];
        cell.textLabel.text = @"我的文件";
    } else if (indexPath.row == 6) {
        cell.imageView.image = [UIImage imageNamed:@"card_list_icon"];
        cell.textLabel.text = @"我的名片夹";
    }
    return cell;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%@",@"cell点击了");;
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    if (self.block) {
        self.block(cell.textLabel.text);
    }
}


@end
