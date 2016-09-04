//
//  UAViewModel.h
//  UADemo_01
//
//  Created by sunny on 16/8/30.
//
//

#import <Foundation/Foundation.h>
#import "UAHomeRequest.h"
#import "UAFollowRequest.h"
#import "UAWeiBo.h"

//viewModel层主要针对拿到的处理过的数据做业务逻辑判定通知回调上层
@interface UAHomeViewModel : NSObject

@property (nonatomic,strong)NSArray <UAWeiBo *> * statuses;
@property (nonatomic,strong)NSNumber * total_number;
@property (nonatomic,strong)NSNumber * next_cursor;

@property (nonatomic,strong,readonly) UAHomeRequest *homeRequest;
@property (nonatomic,strong,readonly) UAFollowRequest *followRequest;

- (void)fetchFollowListCompletionHandler:(void(^)(NSArray *data))completion;

- (void)followWithModel:(UAWeiBo *)model CompletionHandler:(void(^)(NSInteger index))completion;

@end
