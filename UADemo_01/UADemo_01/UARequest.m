//
//  UARequest.m
//  UADemo_01
//
//  Created by sunny on 16/8/30.
//
//

#import "UARequest.h"

@interface UARequest ()

@property (nonatomic,strong) AFHTTPSessionManager * manager;
@property (nonatomic,strong) NSURLSessionDataTask * task;

@end

@implementation UARequest
- (instancetype)init
{
    self = [super init];
    if (self) {
        _parameters = @{};
        _manager = [AFHTTPSessionManager manager];
    }
    return self;
}

- (void)response:(void(^)(NSDictionary * params))success
         failure:(void(^)(NSError *error))failure
{
    //url 二次拼接

    self.task = [self.manager GET:self.hostUrl
                       parameters:self.parameters
                         progress:nil
                          success:^(NSURLSessionDataTask *task, id _Nullable responseObject){
                              NSLog(@"%@ %@",task.response.URL.absoluteString,responseObject);
                              if (success) {
                                  success(responseObject);
                              }
                          }
                          failure:^(NSURLSessionDataTask * _Nullable task, NSError *error){
                              if (failure) {
                                  failure(error);
                              }
                          }];
}

- (NSString *)hostUrl
{
    return @"";
}

- (NSString *)serverAPI
{
    return @"";
}

- (void)cancle
{
    [self.task cancel];
}
@end
