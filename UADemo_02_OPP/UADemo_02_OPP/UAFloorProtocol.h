//
//  UAFloorProtocol.h
//  UADemo_02_OPP
//
//  Created by ccguo on 16/9/3.
//  Copyright © 2016年 cc. All rights reserved.
//

#import "UAAction.h"

@protocol UAFloorProtocol;
@protocol UAFloorProtocol <NSObject>
@required
- (NSString *)floorIdentifier;
- (id<UAFloorProtocol>)modelAtIndexPath:(NSIndexPath *)indexPath;

@optional
- (float)cellHeight;
- (void)accessData:(id)data;
- (UAAction *)jumpActionForIndexPath:(NSIndexPath *)indexPath;
@end
