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
    self.parameters =  @{TOKEN:ACCESSTOKEN,
                         COUNT: @"100"
                         };
    [self response:^(NSDictionary *params){
               if(completion){
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
    return REQUESTPUBLICURL;
}

- (NSString *)serverAPI
{
    return @"api/home";
}

@end
