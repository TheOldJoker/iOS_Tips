//
//  ViewController.m
//  KVC突如其来的骚
//
//  Created by 赵一欢 on 2018/6/28.
//  Copyright © 2018年 Joker. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray * stus = [NSMutableArray array];
    Student *stu1 = [[Student alloc] init];
    stu1.name = @"stu1";
    stu1.age = 18;
    [stus addObject:stu1];
    
    Student *stu2 = [[Student alloc] init];
    stu2.name = @"stu2";
    stu2.age = 17;
    [stus addObject:stu2];
    
    Student *stu3 = [[Student alloc] init];
    stu3.name = @"stu3";
    stu3.age = 19;
    [stus addObject:stu3];
    
    //将元素取出合成新的数组
    NSLog(@"%@",[stus valueForKeyPath:@"name"]);
    //最小值
    NSLog(@"%@",[stus valueForKeyPath:@"@min.age"]);
    //最大值
    NSLog(@"%@",[stus valueForKeyPath:@"@max.age"]);
    //平均值
    NSLog(@"%@",[stus valueForKeyPath:@"@avg.age"]);
    //总和
    NSLog(@"%@",[stus valueForKeyPath:@"@sum.age"]);
    //转大写
    NSLog(@"%@",[[stus valueForKeyPath:@"name"] valueForKeyPath:@"uppercaseString"]);
    //长度
    NSLog(@"%@",[[stus valueForKeyPath:@"name"] valueForKeyPath:@"length"]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
