//
//  UAViewModel.m
//  UADemo_01
//
//  Created by sunny on 16/8/30.
//
//

#import "UAHomeViewModel.h"
#import "UAWeiBo.h"

@interface UAHomeViewModel ()

@property (nonatomic,strong) UAHomeRequest   *homeRequest;
@property (nonatomic,strong) UAFollowRequest *followRequest;

@end

@implementation UAHomeViewModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _homeRequest = [[UAHomeRequest alloc] init];
        _followRequest = [[UAFollowRequest alloc] init];
    }
    return self;
}

- (void)fetchFollowListCompletionHandler:(void(^)(NSArray *data))completion
{
    [_homeRequest fetchUAHomeInfoCompletionHandler:^(NSDictionary *params){
        NSArray * weibos = UA_DOWN_LOAD(params[@"statuses"], [NSArray class]);
        NSMutableArray *temStatuses = [NSMutableArray array];
        for (NSDictionary * item in weibos) {
            [temStatuses addObject:[UAWeiBo mj_objectWithKeyValues:item]];
        }
        self.statuses = [temStatuses copy];
        self.total_number = UA_DOWN_LOAD(params[@"total_number"], [NSNumber class]);
        self.next_cursor = UA_DOWN_LOAD(params[@"next_cursor"], [NSNumber class]);

        if (completion) {
            completion(nil);
        }

    }];
}

- (void)followWithModel:(UAWeiBo *)model CompletionHandler:(void(^)(NSInteger index))completion
{
    //发起请求关注动作接口
    [_followRequest followWithWeiboModel:model CompletionHandler:^(NSDictionary * params){
        if(completion) completion(0);
    }];
}

@end
