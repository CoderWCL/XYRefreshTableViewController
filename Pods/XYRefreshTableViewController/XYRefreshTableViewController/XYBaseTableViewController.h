//
//  XYBaseTableViewController.h
//  XYRefreshTableViewControllerDemo
//
//  Created by 吕万昌 on 2018/8/29.
//  Copyright © 2018年 lvwanchang. All rights reserved.
//

#import <UIKit/UIKit.h>

static NSString *const UITableViewCellId = @"UITableViewCellId";

@interface XYBaseTableViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSArray *array;
@property (strong, nonatomic) NSMutableArray *dataArray;
@property (strong, nonatomic) NSMutableDictionary *dataDictionary;
@property (strong, nonatomic) UITableView *tableView;
@property (nonatomic, strong) UIView *emptyView;


@property (nonatomic) int page;

- (instancetype)initWithStyle:(UITableViewStyle)style;

@property (nonatomic) BOOL showRefreshHeader;//是否支持下拉刷新
@property (nonatomic) BOOL showRefreshFooter;//是否支持上拉加载

- (void)tableViewDidTriggerHeaderRefresh;//下拉刷新事件
- (void)tableViewDidTriggerFooterRefresh;//上拉加载事件

/*!
 @method
 @brief 加载刷新完成调用
 @param isHeader : YES 表示下拉刷新事件 NO表示上拉加载事件
 @param reload 是否刷新 tableView
 */
- (void)tableViewDidFinishTriggerHeader:(BOOL)isHeader reload:(BOOL)reload;

@end
