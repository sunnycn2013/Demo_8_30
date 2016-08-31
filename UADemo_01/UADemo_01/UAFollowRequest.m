//
//  UAFollowRequest.m
//  UADemo_01
//
//  Created by ccguo on 16/8/31.
//
//

#import "UAFollowRequest.h"

@implementation UAFollowRequest

- (void)followWithWeiboModel:(UAModel *)model CompletionHandler:(void(^)(NSString * code))completion
{
    [self response:^(NSDictionary *params, NSURLResponse * response, NSError * error){
        
    }];
}

- (NSString *)hostUrl
{
    return @"http://www.baidu.com/";
}

- (NSString *)serverAPI
{
    return @"api/follow";
}
@end
