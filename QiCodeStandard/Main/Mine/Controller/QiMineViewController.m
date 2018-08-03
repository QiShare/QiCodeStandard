//
//  QiMineViewController.m
//  QiCodeStandard
//
//  Created by liusiqi on 2018/8/2.
//  Copyright © 2018年 QiShare. All rights reserved.
//

#import "QiMineViewController.h"
#import "QiMineCell.h"

static NSString *mineCellId = @"mineCellId";

@interface QiMineViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UIView *headView;
@property (nonatomic, strong) UITableView *tableView;

@property (nonatomic, copy) NSArray<QiMineData *> *cellDatas;

@end

@implementation QiMineViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self setupHeadView];
    [self setupTableView];
    
    [self getCellDatas];
}


#pragma mark - Private Functions

- (void)setupHeadView {
    
    _headView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 60)];
    _headView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:_headView];
}

- (void)setupTableView {
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, _headView.frame.size.height, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleLeftMargin;
    _tableView.estimatedSectionHeaderHeight = .0;
    _tableView.estimatedSectionFooterHeight = .0;
    _tableView.dataSource = self;
    _tableView.delegate = self;
    _tableView.tableFooterView = self.tableFooterView;
    [_tableView registerClass:[QiMineCell class] forCellReuseIdentifier:mineCellId];
    [self.view addSubview:_tableView];
}

- (UIView *)tableFooterView {
    
    UIView *tableFooterView = [[UIView alloc] initWithFrame:CGRectMake(.0, .0, _tableView.frame.size.width, 150.0)];
    
    CGFloat horMargin = 50.0;
    UIButton *logoutButton = [UIButton buttonWithType:UIButtonTypeCustom];
    logoutButton.frame = CGRectMake(.0, .0, tableFooterView.frame.size.width - horMargin * 2, 50.0);
    logoutButton.center = tableFooterView.center;
    [logoutButton setTitle:@"这是一个Button" forState:UIControlStateNormal];
    [logoutButton setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];
    [logoutButton addTarget:self action:@selector(logoutButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    logoutButton.layer.borderColor = [UIColor purpleColor].CGColor;
    logoutButton.layer.cornerRadius = logoutButton.frame.size.height / 2;
    logoutButton.layer.borderWidth = 1.0;
    logoutButton.layer.masksToBounds = YES;
    [tableFooterView addSubview:logoutButton];
    
    return tableFooterView;
}


#pragma mark - Action functions

- (void)logoutButtonClicked:(id)sender {
    
    NSLog(@"ButtonClick");
}


#pragma mark - Request functions

- (NSArray *)getCellDatas {//这里模仿网络请求成功
    
    QiMineData *data = [[QiMineData alloc] initWithDic:@{@"title": @"QiShare", @"detail": @"Hello,everyone!"}];
    
    NSMutableArray<QiMineData *> *datas = [NSMutableArray array];
    for (int i=0; i<20; i++) {
        [datas addObject:data];
    }
    
    _cellDatas = datas;
    
    return _cellDatas;
}


#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _cellDatas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    QiMineCell *cell = [tableView dequeueReusableCellWithIdentifier:mineCellId forIndexPath:indexPath];
    cell.cellData = _cellDatas[indexPath.row];
    
    return cell;
}


#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    
    return 50.0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    
    return CGFLOAT_MIN;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 55.0;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"QiShare提醒您，您点击了%ld个cell",(long)indexPath.row);
}

@end
