//
//  ViewController.m
//  XYRefreshTableViewControllerDemo
//
//  Created by 吕万昌 on 2018/8/29.
//  Copyright © 2018年 lvwanchang. All rights reserved.
//

#import "ViewController.h"

#import "NormalTableViewController.h"     //普通列表
#import "RefreshTableViewController.h"    //下拉刷新列表
#import "RefreshLoadTableViewController.h"//分页列表

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)nomalAtion:(id)sender {
    NormalTableViewController *vc = [[NormalTableViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)refreshAction:(id)sender {
    RefreshTableViewController *vc = [[RefreshTableViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];

}
- (IBAction)refreshLoadAction:(id)sender {
    RefreshLoadTableViewController *vc = [[RefreshLoadTableViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
