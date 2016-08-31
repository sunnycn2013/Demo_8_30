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

- (void)fetchUAHomeInfoCompletionHandler:(void (^)(NSDictionary *params))completion;

@end
