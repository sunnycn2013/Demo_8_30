//
//  UABaseFloor.h
//  UADemo_02_OPP
//
//  Created by ccguo on 16/9/3.
//  Copyright © 2016年 cc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UAFloorProtocol.h"

@class UAJump;
@interface UABaseFloor : NSObject<UAFloorProtocol>

@property (nonatomic,strong)NSString *pattern;
@property (nonatomic,strong)NSString *img;
@property (nonatomic,strong)UAJump   *jump;
@property (nonatomic,strong)NSArray  *picList;

@end
