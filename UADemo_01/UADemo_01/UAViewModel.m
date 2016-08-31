//
//  UAViewModel.m
//  UADemo_01
//
//  Created by sunny on 16/8/30.
//
//

#import "UAViewModel.h"

@interface UAViewModel ()

@property (nonatomic,strong) UAHomeRequest   *homeRequest;
@property (nonatomic,strong) UAFollowRequest *followRequest;

@end

@implementation UAViewModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _homeRequest = [[UAHomeRequest alloc] init];
        _followRequest = [[UAFollowRequest alloc] init];
    }
    return self;
}

- (void)setSuccess:(dispatch_block_t)success fail:(dispatch_block_t)fail
{
    self.success = success;
    self.fail = fail;
}

- (void)fetchFollowListCompletionHandler:(void(^)(NSArray *data))completion
{
    [_homeRequest fetchUAHomeInfoCompletionHandler:^(NSDictionary *params){
        NSArray * weibos = UA_DOWN_LOAD(params[@"data"], [NSArray class]);
        if (completion) {
            completion(weibos);
        }

    }];
}

- (void)followWithModel:(UAModel *)model CompletionHandler:(void(^)(NSInteger index))completion
{
    [_followRequest followWithWeiboModel:model CompletionHandler:^(NSString * code){
        
    }];
}

@end
