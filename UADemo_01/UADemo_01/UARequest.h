//
//  UARequest.h
//  UADemo_01
//
//  Created by sunny on 16/8/30.
//
//

#import <Foundation/Foundation.h>

#define UA_DOWN_LOAD(obj,class) ([obj isKindOfClass:class] ? obj : nil)

#define REQUESTPUBLICURL @"https://api.weibo.com/2/statuses/public_timeline.json"
#define ACCESSTOKEN @"2.00NofgBD0L1k4pc584f79cc48SKGdD"
#define TOKEN @"access_token"
#define COUNT @"count"

@interface UARequest : NSObject

@property (nonatomic,strong)NSDictionary * parameters;
@property (nonatomic,strong,readonly) NSURLSessionDataTask * task;

- (void)response:(void(^)(NSDictionary * params))success
         failure:(void(^)(NSError *error))failure;
- (NSString *)hostUrl;
- (NSString *)serverAPI;
- (void)cancle;

@end
