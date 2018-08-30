//
//  RefreshLoadTableViewController.m
//  XYRefreshTableViewControllerDemo
//
//  Created by 吕万昌 on 2018/8/29.
//  Copyright © 2018年 lvwanchang. All rights reserved.
//

#import "RefreshLoadTableViewController.h"

@interface RefreshLoadTableViewController ()

@end

@implementation RefreshLoadTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

/**
 创建下拉数据
 */
- (void)refreshData {
    
    self.total = 50; //总数据条数
    
    self.page = 0;
    
    if (self.dataArray.count) {
        [self.dataArray removeAllObjects];
    }
    
    int count = 10;
    for (int i = 0; i < count; i ++) {
        [self.dataArray addObject:@1];
    }
    
    [self performSelector:@selector(endRefresh) withObject:nil afterDelay:0.5];
}

/**
 创建上拉数据
 */
- (void)loadMoreData {
    self.page ++;
    
    int count = 10;
    for (int i = 0; i < count; i ++) {
        [self.dataArray addObject:@1];
    }
    
    [self performSelector:@selector(endLoad) withObject:nil afterDelay:0.5];
}


- (void)endRefresh {
    [self tableViewDidFinishTriggerHeader:YES reload:YES];
}

- (void)endLoad {
    [self tableViewDidFinishTriggerHeader:NO reload:YES];
}

@end
