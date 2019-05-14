//
//  CollectionTableViewCell.h
//  TestCollections
//
//  Created by 3 Embed on 06/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CollectionTableViewCell : UITableViewCell <UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

//@property UICollectionView *collectionView;

@property (nonatomic, strong) NSIndexPath *indexPath;

-(void)reset;
-(void)viewSetUp;
@end

NS_ASSUME_NONNULL_END
