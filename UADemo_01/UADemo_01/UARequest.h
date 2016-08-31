//
//  UARequest.h
//  UADemo_01
//
//  Created by sunny on 16/8/30.
//
//

#import <Foundation/Foundation.h>

#define UA_DOWN_LOAD(obj,class) ([obj isKindOfClass:class] ? obj : nil)

@interface UARequest : NSObject

@property (nonatomic,strong,readonly)NSDictionary * parameters;
@property (nonatomic,strong,readonly)NSURLRequest * request;

- (instancetype)initWithPatameters:(NSDictionary *)params;

- (void)response:(void(^)(NSDictionary * params, NSURLResponse * response, NSError * error))completionHandler;
- (NSString *)hostUrl;
- (NSString *)serverAPI;
- (void)cancle;

@end
