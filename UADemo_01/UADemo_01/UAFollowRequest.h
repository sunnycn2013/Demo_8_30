//
//  UAFollowRequest.h
//  UADemo_01
//
//  Created by ccguo on 16/8/31.
//
//

#import "UARequest.h"
#import "UAModel.h"

@interface UAFollowRequest : UARequest

- (void)followWithWeiboModel:(UAModel *)model CompletionHandler:(void(^)(NSDictionary * params))completion;

@end
