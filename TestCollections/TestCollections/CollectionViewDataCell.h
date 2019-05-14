//
//  CollectionViewDataCell.h
//  TestCollections
//
//  Created by 3 Embed on 07/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CollectionViewDataCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

-(void)cellViewSetUp;

@end

NS_ASSUME_NONNULL_END
