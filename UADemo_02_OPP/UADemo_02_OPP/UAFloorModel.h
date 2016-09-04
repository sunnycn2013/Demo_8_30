//
//  UAFloorModel.h
//  UADemo_02_OPP
//
//  Created by ccguo on 16/9/3.
//  Copyright © 2016年 cc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UABaseFloor.h"

@protocol UAFloorProtocol;
@interface UAFloorModel : NSObject

@property (nonatomic,strong) NSString * name;
@property (nonatomic,strong) NSString * code;
@property (nonatomic,strong) NSString * time;
@property (nonatomic,strong) NSArray<UABaseFloor *>  * floors;// 此处可以放多种模版

//- (id<UAFloorProtocol>)itemAtIndexPath:(NSIndexPath *)indexPath;
//- (UAAction *)jumActonAtIndexPath:(NSIndexPath *)indexPath;

@end
