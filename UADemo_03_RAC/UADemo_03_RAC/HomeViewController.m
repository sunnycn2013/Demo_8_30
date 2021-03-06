//
//  HomeViewController.m
//  UADemo_03_RAC
//
//  Created by ccguo on 16/9/4.
//  Copyright © 2016年 cc. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeViewModel.h"
#import "HomeCell.h"

@interface HomeViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong)HomeViewModel * homeViewModel;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];
    
    @weakify(self);
    RACSignal * signal = [self.homeViewModel.requestCommand execute:nil];
    [signal subscribeNext:^(id x){
        @strongify(self);
        self.homeViewModel.data = x;
        [self.tableView reloadData];
    }];
    if ([self respondsToSelector:@selector(setAutomaticallyAdjustsScrollViewInsets:)]) {
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
    [self.tableView registerClass:[HomeCell class] forCellReuseIdentifier:@"HomeCell"];
}

#pragma mark - UITableViewDelegate,UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.homeViewModel.data.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellIdentifier = @"HomeCell";
    HomeCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[HomeCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
//    NSDictionary * items = [self.homeViewModel.data objectAtIndex:indexPath.row];
//    cell.textLabel.text = items[@"title"];
    return cell;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

- (HomeViewModel *)homeViewModel
{
    if (!_homeViewModel) {
        _homeViewModel = [[HomeViewModel alloc] init];
    }
    return _homeViewModel;
}
@end
