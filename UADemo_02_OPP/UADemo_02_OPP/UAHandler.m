//
//  UAHandler.m
//  UADemo_02_OPP
//
//  Created by ccguo on 16/9/3.
//  Copyright © 2016年 cc. All rights reserved.
//

#import "UAHandler.h"

@implementation UAHandler

- (void)handleAction:(UAAction *)action
{
    if ([self.delegate respondsToSelector:@selector(handler:beforeExecAction:)]) {
        [self.delegate handler:self beforeExecAction:action];
    }
    
    //exec action
    [action execute];
    
    if ([self.delegate respondsToSelector:@selector(handler:afterExecAction:)]) {
        [self.delegate handler:self afterExecAction:action];
    }
}


@end
