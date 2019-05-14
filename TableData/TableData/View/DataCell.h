//
//  DataCell.h
//  TableData
//
//  Created by 3 Embed on 07/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "../Model/TableDataCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface DataCell : UITableViewCell

//@property (nonatomic,weak) UIImageView *imageView;
+ (NSString *)reuseIdentifier;
@property (weak, nonatomic) IBOutlet UIImageView *customImageView;
@property (weak, nonatomic) IBOutlet UILabel *customTitleView;
//-(void)
//@property (readwrite) UIImageView *imageView;
//-(void) addCellSubViews;
//-(UIImageView *)imageView;
- (void)updateCell:(TableDataCell *)data;
@end



NS_ASSUME_NONNULL_END
