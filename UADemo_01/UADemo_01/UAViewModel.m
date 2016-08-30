//
//  UAViewModel.m
//  UADemo_01
//
//  Created by sunny on 16/8/30.
//
//

#import "UAViewModel.h"

@implementation UAViewModel

- (void)setSuccess:(dispatch_block_t)success fail:(dispatch_block_t)fail
{
    self.success = success;
    self.fail = fail;
}

@end
