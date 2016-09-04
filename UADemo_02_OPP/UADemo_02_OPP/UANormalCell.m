//
//  UANormalCell.m
//  UADemo_02_OPP
//
//  Created by ccguo on 16/9/4.
//  Copyright © 2016年 cc. All rights reserved.
//

#import "UANormalCell.h"
#import "UANormal.h"

@interface UANormalCell ()

@property (nonatomic,strong) UIImageView * activityImageView;
@property (nonatomic,strong) UILabel     * labelText;
@property (nonatomic,strong) UANormal    * normal;
@end
@implementation UANormalCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setUpUI];
    }
    return self;
}

- (void)setUpUI
{
    _activityImageView = [[UIImageView alloc] init];
    _activityImageView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.contentView addSubview:_activityImageView];
    
    _labelText = [[UILabel alloc] init];
    _labelText.translatesAutoresizingMaskIntoConstraints = NO;
    [self.contentView addSubview:_labelText];
    
    [_activityImageView mas_makeConstraints:^(MASConstraintMaker *make){
        make.edges.equalTo(self.contentView);
    }];
    UIView * sv = self.contentView;
    [_labelText mas_makeConstraints:^(MASConstraintMaker *make){
        make.top.equalTo(sv).with.offset(10);
        make.left.equalTo(sv).with.offset(10);
        make.bottom.equalTo(sv).with.offset(-10);
        make.right.equalTo(sv).with.offset(-10);
    }];
}

- (void)accessData:(id)data
{
    if (![data isKindOfClass:[UANormal class]]) {
        return;
    }
    self.normal = data;
    [_activityImageView setImageWithURL:[NSURL URLWithString:_normal.img]];
    [_labelText setText:_normal.pattern];
}

@end
