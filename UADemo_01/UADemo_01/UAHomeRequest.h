//
//  UAHomeRequest.h
//  UADemo_01
//
//  Created by sunny on 16/8/30.
//
//

#import <Foundation/Foundation.h>
#import "UARequest.h"

@interface UAHomeRequest : UARequest

- (void)fetchUAHomeInfo;
- (void)responseHomeInfo:(void (^)(NSDictionary *params, NSURLResponse *, NSError *))completionHandler;

@end
