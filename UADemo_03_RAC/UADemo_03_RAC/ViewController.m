//
//  ViewController.m
//  UADemo_03_RAC
//
//  Created by ccguo on 16/8/31.
//  Copyright © 2016年 cc. All rights reserved.
//

#import "ViewController.h"
#import "LoginViewModel.h"
#import "HomeViewController.h"


@interface ViewController ()
@property (nonatomic,strong) LoginViewModel * loginViewModel;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self bindModel];
    [self loginAction];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)bindModel
{
    _loginViewModel = [[LoginViewModel alloc] init];
    RAC(self.loginViewModel,userName) = self.userName.rac_textSignal;
    RAC(self.loginViewModel,passWord) = self.passWord.rac_textSignal;
    RAC(self.loginButton,enabled) = [_loginViewModel buttonIsValid];
    
    @weakify(self);
    [self.loginViewModel.successObject subscribeNext:^(NSArray * x){
        @strongify(self);
        UIStoryboard * storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        HomeViewController * homeVC = [storyBoard instantiateViewControllerWithIdentifier:@"HomeViewController"];
        [self.navigationController pushViewController:homeVC animated:YES];
    }];
    
    //fail
    [self.loginViewModel.failureObject subscribeNext:^(id x) {
        
    }];
    
    //error
    [self.loginViewModel.errorObject subscribeNext:^(id x) {
        
    }];
}

- (void)loginAction
{
    [[self.loginButton rac_signalForControlEvents:UIControlEventTouchUpInside]
     subscribeNext:^(id x) {
        [_loginViewModel login];
    }];
}
@end
