//
//  UAHandler.h
//  UADemo_02_OPP
//
//  Created by ccguo on 16/9/3.
//  Copyright © 2016年 cc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UAAction.h"

@class UAHandler;
@class UAAction;
@protocol UAHandlerDelegte <NSObject>

- (void)handler:(UAHandler *)handler beforeExecAction:(UAAction *)action;
- (void)handler:(UAHandler *)handler afterExecAction:(UAAction *)action;

@end

@interface UAHandler : NSObject

@property (nonatomic,assign) id<UAHandlerDelegte> delegate;

- (void)handleAction:(UAAction *)action;
@end
