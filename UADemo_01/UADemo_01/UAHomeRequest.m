//
//  UAHomeRequest.m
//  UADemo_01
//
//  Created by sunny on 16/8/30.
//
//

#import "UAHomeRequest.h"

@implementation UAHomeRequest

- (void)fetchUAHomeInfo
{
    NSString * functionId = @"uaHome";
    NSString * uaHomeHost = @"www.baidu.com";
}

- (void)responseHomeInfo:(void (^)(NSDictionary *params, NSURLResponse *, NSError *))completionHandler
{
//    [self response:()]
}

@end
