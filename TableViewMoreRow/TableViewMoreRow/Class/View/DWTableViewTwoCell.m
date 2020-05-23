//
//  DWTableViewTwoCell.m
//  TableViewMoreRow
//
//  Created by wdw on 2020/5/23.
//  Copyright © 2020 wdw. All rights reserved.
//

#import "DWTableViewTwoCell.h"



@implementation DWTableViewTwoCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initUI];
    }

    return self;
}

- (void)initUI
{


    _cellView1 = [[DWColSubItemView alloc] initWithFrame:CGRectMake(itemX, itemY, itemW, itemH)];
    _cellView1.backgroundColor = [UIColor purpleColor];

    [self.contentView addSubview:_cellView1];

    _cellView2 = [[DWColSubItemView alloc] initWithFrame:CGRectMake(itemX +itemW + listMargin, itemY, itemW, itemH)];
    _cellView2.backgroundColor = [UIColor redColor];

    [self.contentView addSubview:_cellView2];
}

@end
