//
//  XYBaseRefreshTableViewController.h
//  XYRefreshTableViewControllerDemo
//
//  Created by 吕万昌 on 2018/8/29.
//  Copyright © 2018年 lvwanchang. All rights reserved.
//

#import "XYBaseTableViewController.h"

@interface XYBaseRefreshLoadTableViewController : XYBaseTableViewController

@property (nonatomic, assign) int total;

//下拉刷新调用方法
- (void)refreshData;
//上拉加载调用方法
- (void)loadMoreData;

@end
