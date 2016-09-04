//
//  UAInvocation.m
//  UADemo_02_OPP
//
//  Created by ccguo on 16/9/3.
//  Copyright © 2016年 cc. All rights reserved.
//

#import "UAAction.h"
#import "UAJump.h"

NSString * const kUAActionJump  = @"UAActionJump";
NSString * const kUAActionShare = @"UAActionShare";

@implementation UAAction

- (instancetype)initWihtJump:(UAJump *)jump
{
    self = [super init];
    if (self) {
        self.params = jump.params;
        self.url = jump.url;
        self.des = jump.des;
    }
    return self;
}

- (void)execute
{
    if ([self.actionType isEqualToString:kUAActionJump]) {
        [self handleJump];
    }
    
    if ([self.actionType isEqualToString:kUAActionShare]) {
        [self handleShare];
    }
}

- (void)handleJump
{
    NSLog(@"go to next page....");
}

- (void)handleShare
{
    
}
@end
