//
//  TestViewController1.m
//  OCStringEncodeDemo
//
//  Created by perfay on 2018/8/17.
//  Copyright © 2018年 luck. All rights reserved.
//

#import "TestViewController1.h"

@interface TestViewController1 ()

@end

@implementation TestViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Hello World!");
    NSString *string = @"你好";
    NSString *string2 = @"世界";
    NSString *string3 = @"！";
    NSLog(@"%@ %@%@",string,string2,string3);
    NSString *host = @"http://www.baidu.com";//带: 不能混淆 
    NSString *url = @"//api/login";
    NSString *url = [NSString stringWithFormat:@"%@%@",host,api];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
