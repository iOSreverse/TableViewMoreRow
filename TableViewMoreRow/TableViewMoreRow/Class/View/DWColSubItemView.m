//
//  DWColSubItemView.m
//  TableViewMoreRow
//
//  Created by wdw on 2020/5/23.
//  Copyright © 2020 wdw. All rights reserved.
//

#import "DWColSubItemView.h"

@interface DWColSubItemView ()

@property (nonatomic, strong) UILabel *nickLabel;

@end

@implementation DWColSubItemView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI {
    self.nickLabel.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.width);
}


-(void)setCellModel:(DWTwoCellModel *)cellModel
{
    _cellModel = cellModel;
    
    self.nickLabel.text = cellModel.nameString;
}

#pragma mark - 懒加载
- (UILabel *)nickLabel {
    if (_nickLabel == nil) {
        _nickLabel = [UILabel new];
        _nickLabel.textColor = [UIColor blackColor];
        _nickLabel.font = [UIFont systemFontOfSize:17];
        _nickLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:_nickLabel];
    }
    return _nickLabel;
}

@end
