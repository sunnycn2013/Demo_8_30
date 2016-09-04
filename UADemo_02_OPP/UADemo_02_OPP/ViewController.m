//
//  ViewController.m
//  UADemo_02_OPP
//
//  Created by ccguo on 16/8/31.
//  Copyright © 2016年 cc. All rights reserved.
//

#import "ViewController.h"
#import "UAFloorModel.h"
#import "UANormalCell.h"

#import "UAFloorProtocol.h"
#import "UAFloorRenderProtocol.h"

#import "UAHandler.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource,UAHandlerDelegte>

@property (nonatomic,strong) UAFloorModel * floorModel;
@property (nonatomic,strong) UAHandler    * handler;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"activity";
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    [self registTableViewCell];
    [self fetchData];
    
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - private method
- (void)registTableViewCell
{
    [self.tableView registerClass:[UANormalCell class] forCellReuseIdentifier:@"UANormalCell"];
}

- (void)fetchData
{
    NSString * path = [[NSBundle mainBundle] pathForResource:@"food.json" ofType:nil];
    NSData * data = [[NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil] dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary * dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
    self.floorModel = [UAFloorModel mj_objectWithKeyValues:dic];
    [self.tableView reloadData];
}

#pragma mark - UITableViewDelegate,UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.floorModel.floors.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    id<UAFloorProtocol> item = [self.floorModel.floors objectAtIndex:indexPath.row];
    id<UAFloorRenderProtocol> cell = [tableView dequeueReusableCellWithIdentifier:[item floorIdentifier]];
    [cell accessData:item];
    return (UITableViewCell *)cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    id<UAFloorProtocol> item = [self.floorModel.floors objectAtIndex:indexPath.row];
    return [item cellHeight];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    id<UAFloorProtocol> item = [self.floorModel.floors objectAtIndex:indexPath.row];
    UAAction * action = [item jumpActionForIndexPath:indexPath];
    [self.handler handleAction:action];
}

#pragma mark - UAHandlerDelegte
- (void)handler:(UAHandler *)handler beforeExecAction:(UAAction *)action
{
}

- (void)handler:(UAHandler *)handler afterExecAction:(UAAction *)action
{
}

#pragma mark - set get
- (UAHandler *)handler
{
    if (!_handler) {
        _handler = [[UAHandler alloc] init];
        _handler.delegate = self;
    }
    return _handler;
}
@end
