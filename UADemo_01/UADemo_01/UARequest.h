//
//  UARequest.h
//  UADemo_01
//
//  Created by sunny on 16/8/30.
//
//

#import <Foundation/Foundation.h>

@interface UARequest : NSObject

@property (nonatomic,strong,readonly)NSDictionary * parameters;

- (instancetype)initWithPatameters:(NSDictionary *)params;

- (void)response:(void(^)(NSDictionary * params, NSURLResponse * response, NSError * error))completionHandler;

@end
