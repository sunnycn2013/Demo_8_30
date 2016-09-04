//
//  LoginViewModel.h
//  UADemo_03_RAC
//
//  Created by ccguo on 16/9/4.
//  Copyright © 2016年 cc. All rights reserved.
//

#import "ViewModel.h"

@interface LoginViewModel : ViewModel

@property (nonatomic, strong) NSString   * userName;
@property (nonatomic, strong) NSString   * passWord;
@property (nonatomic, strong) RACSubject * successObject;
@property (nonatomic, strong) RACSubject * failureObject;
@property (nonatomic, strong) RACSubject * errorObject;
- (id)buttonIsValid;
- (void)login;
@end
