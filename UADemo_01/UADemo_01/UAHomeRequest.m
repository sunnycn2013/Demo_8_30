//
//  UAHomeRequest.m
//  UADemo_01
//
//  Created by sunny on 16/8/30.
//
//

#import "UAHomeRequest.h"

@implementation UAHomeRequest

- (void)fetchUAHomeInfoCompletionHandler:(void (^)(NSDictionary *params))completion
{
    [self response:^(NSDictionary *params, NSURLResponse * response, NSError * error){
        if(error)
        {
            //异常埋点
            NSLog(@"wang luo yi chang...");
            return ;
        }
        
        if(completion){
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
    return @"api/home";
}

@end
