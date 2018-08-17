//
//  TestViewController2.m
//  OCStringEncodeDemo
//
//  Created by perfay on 2018/8/17.
//  Copyright © 2018年 luck. All rights reserved.
//

#import "TestViewController2.h"

@interface TestViewController2 ()

@end

@implementation TestViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear: animated];
    NSLog(@"%@",NSStringFromClass(self.class));
}
- (void)LY_TestMetdfahod1:(NSString *)arg1 andArg2:(NSString *)arg2{
    NSLog(@"%s",__FUNCTION__);
}
- (void)LY_TestdafMethod1{
    NSLog(@"%s",__FUNCTION__);
}
- (void)LY_TestMethfdsaod1{
    NSLog(@"%s",__FUNCTION__);
}
- (void)LY_TestMadfethod1{
    NSLog(@"%s",__FUNCTION__);
}
- (void)LY_TestMedfdthod1{
    NSLog(@"%s",__FUNCTION__);
}
- (void)LY_TestMetdfdho{
    NSLog(@"%s",__FUNCTION__);
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
