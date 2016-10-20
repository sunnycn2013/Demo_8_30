//
//  BaseCell.m
//  UADemo_03_RAC
//
//  Created by guochaoyang on 2016/10/20.
//  Copyright © 2016年 cc. All rights reserved.
//

#import "BaseCell.h"

@implementation BaseCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        //
        [self setupView];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return self;
}

- (void)setupView
{

}

- (void)updateConstraints {
    [super updateConstraints];
    [self setConstrains];
}

- (void)setConstrains
{

}

- (void)bindModel:(id)model
{
    
}

@end
