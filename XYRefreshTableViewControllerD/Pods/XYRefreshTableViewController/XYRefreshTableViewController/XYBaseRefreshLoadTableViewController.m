//
//  XYBaseRefreshTableViewController.m
//  XYRefreshTableViewControllerDemo
//
//  Created by 吕万昌 on 2018/8/29.
//  Copyright © 2018年 lvwanchang. All rights reserved.
//

#import "XYBaseRefreshLoadTableViewController.h"

#import "MJRefresh.h"

@interface XYBaseRefreshLoadTableViewController ()

@end

@implementation XYBaseRefreshLoadTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.showRefreshHeader = YES;
    //self.showRefreshFooter = YES;
    
    self.tableView.mj_footer = [MJRefreshAutoNormalFooter footerWithRefreshingTarget:self refreshingAction:@selector(tableViewDidTriggerFooterRefresh)];
    self.tableView.mj_footer.hidden = YES;
    
    [self.tableView.mj_header beginRefreshing];

    // Do any additional setup after loading the view.
}

- (void)setTotal:(int)total {
    _total = total/10 + (total%10 != 0);
}

- (void)tableViewDidFinishTriggerHeader:(BOOL)isHeader reload:(BOOL)reload
{
    if (isHeader) {
        
        if (!self.dataArray.count && self.page == 0) {
            self.tableView.mj_footer.hidden = YES;
            self.emptyView.hidden = NO;
        } else if (self.total - 1 == self.page) {
            [self.tableView.mj_footer endRefreshingWithNoMoreData];
            self.tableView.mj_footer.hidden = NO;
            self.emptyView.hidden = YES;
            
        } else {
            [self.tableView.mj_footer resetNoMoreData];
            self.tableView.mj_footer.hidden = NO;
            self.emptyView.hidden = YES;
        }
        [super tableViewDidFinishTriggerHeader:isHeader reload:reload];
    } else {
        
        if (self.total - 1 == self.page) {
            [self.tableView reloadData];
            // 拿到当前的上拉刷新控件，变为没有更多数据的状态
            [self.tableView.mj_footer endRefreshingWithNoMoreData];
        } else {
            
            [super tableViewDidFinishTriggerHeader:isHeader reload:reload];
        }
    }
}

- (void)refreshData {}
- (void)loadMoreData {}

#pragma - 父类方法

- (void)tableViewDidTriggerHeaderRefresh //下拉刷新事件
{
    [self refreshData];
}

- (void)tableViewDidTriggerFooterRefresh //上拉加载事件
{
    [self loadMoreData];
}

@end
