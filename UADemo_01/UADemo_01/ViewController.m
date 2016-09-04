//
//  ViewController.m
//  UADemo_01
//
//  Created by sunny on 16/8/30.
//
//

#import "ViewController.h"
#import "UAHomeViewModel.h"
#import "UAWeiBo.h"
#import "UAWeiBoCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) UAHomeViewModel * weiboViewModel;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Index";
    self.view.backgroundColor = [UIColor purpleColor];
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.weiboViewModel = [[UAHomeViewModel alloc] init];
    [self.weiboViewModel fetchFollowListCompletionHandler:^(NSArray * data){
        [_tableView reloadData];
    }];
}

#pragma mark - UITableViewDelegate,UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.weiboViewModel.statuses.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellIdentifier = @"WeiBoCell";
    UAWeiBoCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    UAWeiBo * weibo = [self.weiboViewModel.statuses objectAtIndex:indexPath.row];
    [cell accessData:weibo];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 150.0;
}

#pragma mark - UAWeiBoCellDelegate
- (void)weiboView:(UAWeiBoCell *)weibo followUser:(UAWeiBo *)model
{
    [self.weiboViewModel followWithModel:model CompletionHandler:^(NSInteger index){
        [weibo updateWeiBoWithStatu:index];
    }];
}


@end
