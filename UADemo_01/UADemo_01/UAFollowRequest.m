//
//  UAFollowRequest.m
//  UADemo_01
//
//  Created by ccguo on 16/8/31.
//
//

#import "UAFollowRequest.h"

@implementation UAFollowRequest

- (void)followWithWeiboModel:(UAModel *)model CompletionHandler:(void(^)(NSDictionary * params))completion
{
    [self response:^(NSDictionary *params, NSURLResponse * response, NSError * error){
        if (error) {
            NSLog(@"wang luo yi chang...");
            return ;
        }
        if (completion) {
            completion(params);
        }
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
