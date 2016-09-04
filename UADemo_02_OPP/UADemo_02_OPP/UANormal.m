//
//  UANormal.m
//  UADemo_02_OPP
//
//  Created by ccguo on 16/9/4.
//  Copyright © 2016年 cc. All rights reserved.
//

#import "UANormal.h"

@implementation UANormal

#pragma mark - UAFloorProtocol
- (NSString *)floorIdentifier
{
    return @"UANormalCell";
}

- (id<UAFloorProtocol>)modelAtIndexPath:(NSIndexPath *)indexPath
{
    return [self.picList objectAtIndex:0];
}

- (UAAction *)jumpActionForIndexPath:(NSIndexPath *)indexPath
{
    UAAction * action = [[UAAction alloc] initWihtJump:self.jump];
    action.actionType = kUAActionJump;
    return action;
}

- (float)cellHeight
{
    return 90.0;
}
@end
