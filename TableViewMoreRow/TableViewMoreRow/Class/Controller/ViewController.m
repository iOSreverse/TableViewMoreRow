//
//  ViewController.m
//  TableViewMoreRow
//
//  Created by wdw on 2020/5/23.
//  Copyright © 2020 wdw. All rights reserved.
//

#import "ViewController.h"
#import "DWTableViewTwoCell.h"
#import "DWTwoCellModel.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *iTableView;

@property (nonatomic, strong) NSMutableArray *dataArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"两行实现";

    [self initData];
    [self initUI];
}

- (void)initData
{
    for (int i = 0; i < 10; i++) {
        DWTwoCellModel *cellModel = [[DWTwoCellModel alloc] init];
        cellModel.nameString = [NSString stringWithFormat:@"小明%d", i];
        [self.dataArr addObject:cellModel];
    }
}

- (void)initUI
{
    self.iTableView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
}

#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    DWTableViewTwoCell *listCell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([DWTableViewTwoCell class]) forIndexPath:indexPath];

    NSUInteger row = [indexPath row];

    DWTwoCellModel *cellModel = nil;

    for (NSInteger i = 0; i < rowcellCount; i++) {
        //奇数
        if (row * rowcellCount + i > self.dataArr.count - 1) {
            break;
        }

        cellModel = [self.dataArr objectAtIndex:row * rowcellCount + i];
        if (i == 0) {
            listCell.cellView1.cellModel = cellModel;
        } else {
            listCell.cellView2.cellModel = cellModel;
        }
    }
    return listCell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return itemH + listMargin;
}

#pragma mark - 懒加载
- (UITableView *)iTableView {
    if (_iTableView == nil) {
        _iTableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _iTableView.delegate = self;
        _iTableView.dataSource = self;
        _iTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        [self.view addSubview:_iTableView];

        [_iTableView registerClass:[DWTableViewTwoCell class] forCellReuseIdentifier:NSStringFromClass([DWTableViewTwoCell class])];
    }
    return _iTableView;
}

- (NSMutableArray *)dataArr {
    if (_dataArr == nil) {
        _dataArr = [NSMutableArray new];
    }
    return _dataArr;
}

@end
