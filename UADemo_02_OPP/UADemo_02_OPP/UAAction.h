//
//  UAInvocation.h
//  UADemo_02_OPP
//
//  Created by ccguo on 16/9/3.
//  Copyright © 2016年 cc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UAAction;
@class UAJump;
@protocol UAActionProtocol <NSObject>

- (void)execute;

@end

extern NSString * const kUAActionJump;
extern NSString * const kUAActionShare;

@interface UAAction : NSObject<UAActionProtocol>

@property (nonatomic,strong) NSString * actionType;
@property (nonatomic,strong) NSString * des;
@property (nonatomic,strong) NSString * url;
@property (nonatomic,strong) NSDictionary * params;

- (instancetype)initWihtJump:(UAJump *)jump;
@end
