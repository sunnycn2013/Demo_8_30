//
//  UAViewModel.h
//  UADemo_01
//
//  Created by sunny on 16/8/30.
//
//

#import <Foundation/Foundation.h>

@interface UAViewModel : NSObject

@property (nonatomic,copy) dispatch_block_t success;
@property (nonatomic,copy) dispatch_block_t fail;

- (void)setSuccess:(dispatch_block_t)success fail:(dispatch_block_t)fail;

@end
