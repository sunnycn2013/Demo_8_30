//
//  BaseCell.h
//  UADemo_03_RAC
//
//  Created by guochaoyang on 2016/10/20.
//  Copyright © 2016年 cc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseCell : UITableViewCell

- (void)setupView;
- (void)setConstrains;

- (void)bindModel:(id)model;
@end
