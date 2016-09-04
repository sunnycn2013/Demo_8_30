//
//  UAWeiBo.h
//  UADemo_01
//
//  Created by ccguo on 16/9/3.
//
//

#import <Foundation/Foundation.h>
#import "UAUser.h"

typedef void(^WeiBoFunc)(id obj);
@interface UAWeiBo : NSObject

@property (nonatomic,strong) NSString * idstr;
@property (nonatomic,strong) NSString * text;
@property (nonatomic,strong) NSString * source;
@property (nonatomic,strong) UAUser   * user;
@property (nonatomic,copy) WeiBoFunc function;

@end
