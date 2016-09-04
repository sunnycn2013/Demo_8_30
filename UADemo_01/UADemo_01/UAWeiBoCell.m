//
//  UAWeiBoCellTableViewCell.m
//  UADemo_01
//
//  Created by ccguo on 16/9/3.
//
//

#import "UAWeiBoCell.h"

@interface UAWeiBoCell ()

@property (nonatomic,strong) UAWeiBo * weibo;

@end

@implementation UAWeiBoCell

- (void)awakeFromNib {
    // Initialization code
    self.iconImageView.backgroundColor = [UIColor redColor];
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)accessData:(id)data
{
    if (![data isKindOfClass:[UAWeiBo class]]) {
        return;
    }
    self.weibo = (UAWeiBo *)data;
    self.nameLabel.text = _weibo.user.name;
    [self.iconImageView setImageWithURL:[NSURL URLWithString:[_weibo user].profile_image_url]];
}

- (void)updateWeiBoWithStatu:(NSInteger)index
{
    //更改cell状态
}

- (IBAction)followUser:(id)sender
{
    if ([self.delegate respondsToSelector:@selector(weiboView:followUser:)]) {
        [self.delegate weiboView:self followUser:_weibo];
    }
}


@end
