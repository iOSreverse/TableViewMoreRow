//
//  DWTableViewTwoCell.h
//  TableViewMoreRow
//
//  Created by wdw on 2020/5/23.
//  Copyright © 2020 wdw. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DWColSubItemView.h"

NS_ASSUME_NONNULL_BEGIN

@interface DWTableViewTwoCell : UITableViewCell

@property (nonatomic, strong) DWColSubItemView *cellView1;
@property (nonatomic, strong) DWColSubItemView *cellView2;

@end

NS_ASSUME_NONNULL_END
