//
//  UAFollowRequest.h
//  UADemo_01
//
//  Created by ccguo on 16/8/31.
//
//

#import "UARequest.h"
#import "UAWeiBo.h"

//request 主要处理网络请求 参数拼接 response数据处理返回
@interface UAFollowRequest : UARequest

- (void)followWithWeiboModel:(UAWeiBo *)model CompletionHandler:(void(^)(NSDictionary * params))completion;

@end
