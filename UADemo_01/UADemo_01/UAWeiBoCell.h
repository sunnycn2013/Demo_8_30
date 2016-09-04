//
//  UAWeiBoCellTableViewCell.h
//  UADemo_01
//
//  Created by ccguo on 16/9/3.
//
//

#import <UIKit/UIKit.h>
#import "UAWeiBo.h"

@class UAWeiBoCell;
@protocol UAWeiBoCellDelegate;
@protocol UAWeiBoCellDelegate <NSObject>

- (void)weiboView:(UAWeiBoCell *)weibo followUser:(UAWeiBo *)model;

@end
@interface UAWeiBoCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
@property (weak, nonatomic) IBOutlet UIButton *followButton;
@property (weak, nonatomic) id<UAWeiBoCellDelegate> delegate;

- (void)accessData:(id)data;
- (void)updateWeiBoWithStatu:(NSInteger)index;
@end
