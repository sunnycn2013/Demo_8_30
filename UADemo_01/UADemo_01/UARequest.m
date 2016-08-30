//
//  UARequest.m
//  UADemo_01
//
//  Created by sunny on 16/8/30.
//
//

#import "UARequest.h"

@interface UARequest ()

@property (nonatomic,strong)NSURLSession * session;
@property (nonatomic,strong)NSURLRequest * request;
@property (nonatomic,strong)NSDictionary * parameters;

@end

@implementation UARequest
- (instancetype)initWithPatameters:(NSDictionary *)params
{
    self = [super init];
    if (self) {
        _parameters = params;
        _session = [NSURLSession sharedSession];
        _request = [NSURLRequest requestWithURL:params[@"url"]];
    }
    return self;
}

- (void)response:(void(^)(NSDictionary * params, NSURLResponse * response, NSError * error))completionHandler;
{
    //url 二次拼接

    [self.session dataTaskWithRequest:_request completionHandler:^(NSData * data, NSURLResponse * response, NSError * error){
        NSDictionary * parameters = nil;
        if (data) {
            parameters = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
        }
        completionHandler(parameters,response,error);
    }];
}

@end
