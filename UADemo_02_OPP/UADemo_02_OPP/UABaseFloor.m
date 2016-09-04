//
//  UABaseFloor.m
//  UADemo_02_OPP
//
//  Created by ccguo on 16/9/3.
//  Copyright © 2016年 cc. All rights reserved.
//

#import "UABaseFloor.h"

@implementation UABaseFloor

#pragma mark - UAFloorProtocol
- (NSString *)floorIdentifier
{
    return @"";
}

- (id<UAFloorProtocol>)modelAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

- (UAAction *)jumpActionForIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

- (float)cellHeight
{
    return 0;
}
@end
