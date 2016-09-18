//
//  HomeViewModel.h
//  UADemo_03_RAC
//
//  Created by ccguo on 16/9/4.
//  Copyright © 2016年 cc. All rights reserved.
//

#import "ViewModel.h"

@interface HomeViewModel : ViewModel

@property (nonatomic,strong) NSArray *data;
@property(nonatomic, strong, readonly)RACCommand *requestCommand;

@end
