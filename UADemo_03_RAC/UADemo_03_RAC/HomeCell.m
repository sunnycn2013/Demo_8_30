//
//  HomeCell.m
//  UADemo_03_RAC
//
//  Created by guochaoyang on 2016/10/20.
//  Copyright © 2016年 cc. All rights reserved.
//

#import "HomeCell.h"

@interface HomeCell ()
@property (nonatomic,strong) UILabel * nameLabel;
@property (nonatomic,strong) UILabel * desLable;
@property (nonatomic,strong) UILabel * timeLable;
@end

@implementation HomeCell

- (void)setupView
{
    [self.contentView addSubview:self.nameLabel];
    [self.contentView addSubview:self.desLable];
    [self.contentView addSubview:self.timeLable];
    [self setNeedsUpdateConstraints];
    [self updateFocusIfNeeded];
}

- (void)setConstrains
{
    @weakify(self);
    [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make){
        @strongify(self);
        make.left.mas_equalTo(@(10));
        make.top.mas_equalTo(@(5));
        make.width.mas_equalTo(@(300));
        make.height.mas_equalTo(@(20));
        make.right.mas_lessThanOrEqualTo(self.desLable.mas_left).offset(-10);
    }];
    [self.desLable mas_makeConstraints:^(MASConstraintMaker *make){
        @strongify(self);
        make.right.equalTo(self.mas_right).offset(-10);
        make.top.mas_equalTo(@(5));
        make.width.mas_equalTo(@(70));
        make.height.mas_equalTo(@(20));
    }];
    [self.timeLable mas_makeConstraints:^(MASConstraintMaker *make){
        make.left.equalTo(_desLable.mas_left);
        make.top.mas_equalTo(@(70));
        make.width.mas_equalTo(@(70));
        make.height.mas_equalTo(@(20));
    }];
}

- (UILabel *)nameLabel{
    if (!_nameLabel) {
        _nameLabel = [[UILabel alloc] init];
        _nameLabel.backgroundColor = [UIColor purpleColor];
        _nameLabel.translatesAutoresizingMaskIntoConstraints = NO;
    }
    return _nameLabel;
}

- (UILabel *)desLable
{
    if (!_desLable) {
        _desLable = [[UILabel alloc] init];
        _desLable.backgroundColor = [UIColor greenColor];
        _desLable.translatesAutoresizingMaskIntoConstraints = NO;
    }
    return _desLable;
}

- (UILabel *)timeLable
{
    if (!_timeLable) {
        _timeLable = [[UILabel alloc] init];
        _timeLable.backgroundColor = [UIColor yellowColor];
        _timeLable.translatesAutoresizingMaskIntoConstraints = NO;
    }
    return _timeLable;
}
@end
