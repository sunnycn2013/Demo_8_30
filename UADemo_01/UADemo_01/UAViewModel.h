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
#import "UAModel.h"

@interface UAViewModel : NSObject

@property (nonatomic,strong,readonly) UAHomeRequest *homeRequest;
@property (nonatomic,strong,readonly) UAFollowRequest *followRequest;

@property (nonatomic,copy) dispatch_block_t success;
@property (nonatomic,copy) dispatch_block_t fail;

- (void)setSuccess:(dispatch_block_t)success fail:(dispatch_block_t)fail;

- (void)fetchFollowListCompletionHandler:(void(^)(NSArray *data))completion;

- (void)followWithModel:(UAModel *)model CompletionHandler:(void(^)(NSInteger index))completion;

@end
