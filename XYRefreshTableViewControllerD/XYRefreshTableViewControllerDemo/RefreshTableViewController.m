//
//  RefreshTableViewController.m
//  XYRefreshTableViewControllerDemo
//
//  Created by 吕万昌 on 2018/8/29.
//  Copyright © 2018年 lvwanchang. All rights reserved.
//

#import "RefreshTableViewController.h"

@interface RefreshTableViewController ()

@end

@implementation RefreshTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.showRefreshHeader = YES;
    
    [self refreshData];
    // Do any additional setup after loading the view.
}

/**
 创建列表数据
 */
- (void)refreshData {
    
    if (self.dataArray.count) {
        [self.dataArray removeAllObjects];
    }

    int count = random() % 20;
    for (int i = 0; i < count; i ++) {
        [self.dataArray addObject:@1];
    }
    
    [self performSelector:@selector(endRefresh) withObject:nil afterDelay:0.5];
}

- (void)endRefresh {
    [self tableViewDidFinishTriggerHeader:YES reload:YES];
}

#pragma - 父类方法

- (void)tableViewDidTriggerHeaderRefresh //下拉刷新事件
{
    [self refreshData];
}

@end
