//
//  HomeViewModel.m
//  UADemo_03_RAC
//
//  Created by ccguo on 16/9/4.
//  Copyright © 2016年 cc. All rights reserved.
//

#import "HomeViewModel.h"

@implementation HomeViewModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup
{
    _requestCommand = [[RACCommand alloc] initWithSignalBlock:^RACSignal *(id input){
        //执行命令
        //发送请求
        //创建信号 将发送请求的代码包在信号里面
        RACSignal * signal = [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber){
            
            AFHTTPSessionManager * manager = [AFHTTPSessionManager manager];
            [manager GET:@"https://api.douban.com/v2/book/search"
              parameters:@{@"q":@"帅哥"}
                progress:nil
                 success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject){
                     // 请求成功
                     NSArray * array = responseObject[@"books"];
                     [subscriber sendNext:array];
                 }
                 failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error){
                     
                 }];
            return nil;
        }];
        
        return signal;
    }];
}

- (void)addOb
{
//    // 1.创建信号
//    RACSubject *subject = [RACSubject subject];
//    // 2.绑定信号
//    RACSignal *bindSignal = [subject bind:^RACStreamBindBlock{
//        // block调用时刻：只要绑定信号订阅就会调用。不做什么事情，
//        return ^RACSignal *(id value, BOOL *stop){
//            // 一般在这个block中做事 ，发数据的时候会来到这个block。
//            // 只要源信号（subject）发送数据，就会调用block
//            // block作用：处理源信号内容
//            // value:源信号发送的内容，
//            value = @3; // 如果在这里把value的值改了，那么订阅绑定信号的值即44行的x就变了
//            NSLog(@"接受到源信号的内容：%@", value);
//            //返回信号，不能为nil,如果非要返回空---则empty或 alloc init。
//            return [RACReturnSignal return:value]; // 把返回的值包装成信号
//        };
//    }];
//    
//    // 3.订阅绑定信号
//    [bindSignal subscribeNext:^(id x) {
//        NSLog(@"接收到绑定信号处理完的信号:%@", x);
//    }];
//    // 4.发送信号
//    [subject sendNext:@"123"];
}
@end
