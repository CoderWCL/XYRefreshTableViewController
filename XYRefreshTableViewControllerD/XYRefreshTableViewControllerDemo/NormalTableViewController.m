//
//  NormalTableViewController.m
//  XYRefreshTableViewControllerDemo
//
//  Created by 吕万昌 on 2018/8/29.
//  Copyright © 2018年 lvwanchang. All rights reserved.
//

#import "NormalTableViewController.h"

@interface NormalTableViewController ()

@end

@implementation NormalTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self refreshData];
    // Do any additional setup after loading the view.
}


/**
 创建列表数据
 */
- (void)refreshData {
    
    int count = random() % 20;
    for (int i = 0; i < count; i ++) {
        [self.dataArray addObject:@1];
    }
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
