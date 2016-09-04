//
//  LoginViewModel.m
//  UADemo_03_RAC
//
//  Created by ccguo on 16/9/4.
//  Copyright © 2016年 cc. All rights reserved.
//

#import "LoginViewModel.h"

@interface LoginViewModel ()

@property (nonatomic,strong) RACSignal * userNameSignal;
@property (nonatomic,strong) RACSignal * passWordSignal;
@property (nonatomic, strong) NSArray *requestData;
@end
@implementation LoginViewModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _userNameSignal = RACObserve(self,userName);
        _passWordSignal = RACObserve(self,passWord);
        _successObject  = [RACSubject subject];
        _failureObject  = [RACSubject subject];
        _errorObject    = [RACSubject subject];
    }
    return self;
}
- (id)buttonIsValid
{
    RACSignal *isValid = [RACSignal combineLatest:@[_userNameSignal,_passWordSignal]
                                           reduce:^id(NSString *userName, NSString *password){
                                                return @(userName.length >= 3 && password.length >= 3);
                                            }];
    return isValid;
}

- (void)login
{
    [_successObject sendNext:@[_userName,_passWord]];
    NSLog(@"%@ %@",_userName,_passWord);
    NSLog(@"request start...");
}
@end
