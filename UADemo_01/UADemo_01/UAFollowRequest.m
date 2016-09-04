//
//  UAFollowRequest.m
//  UADemo_01
//
//  Created by ccguo on 16/8/31.
//
//

#import "UAFollowRequest.h"

@implementation UAFollowRequest

- (void)followWithWeiboModel:(UAWeiBo *)model CompletionHandler:(void(^)(NSDictionary * params))completion
{
    [self response:^(NSDictionary *params){
                if (completion) {
                    completion(params);
                }
            }
           failure:^(NSError * error){
               NSLog(@"wang luo yi chang...");
               return ;
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
