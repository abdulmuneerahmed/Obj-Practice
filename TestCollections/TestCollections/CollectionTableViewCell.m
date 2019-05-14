//
//  CollectionTableViewCell.m
//  TestCollections
//
//  Created by 3 Embed on 06/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import "CollectionTableViewCell.h"
#import "CollectionViewDataCell.h"

@implementation CollectionTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    // Initialization code
    [self viewSetUp];
//    [_collectionView registerClass:[UICollectionViewCell self] forCellWithReuseIdentifier:@"CcellId"];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    self.collectionView.showsHorizontalScrollIndicator = false;
    [self.collectionView setContentOffset:self.collectionView.contentOffset animated:NO];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)viewSetUp
{
//    UICollectionViewFlowLayout *layout = [UICollectionViewFlowLayout alloc];
//    _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
//    _collectionView.backgroundColor = UIColor.whiteColor;
//    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
//    _collectionView.translatesAutoresizingMaskIntoConstraints = false;
//    [self addSubview:_collectionView];
//    [_collectionView.topAnchor constraintEqualToAnchor:self.topAnchor].active = YES;
//    [_collectionView.leadingAnchor constraintEqualToAnchor:self.leadingAnchor].active = YES;
//    [_collectionView.trailingAnchor constraintEqualToAnchor:self.trailingAnchor].active = YES;
//    [_collectionView.bottomAnchor constraintEqualToAnchor:self.bottomAnchor].active = YES;
//

}

- (void)reset
{
    [_collectionView scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:0 inSection:0] atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:true];
//    [self.collectionView scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:0 inSection:0] atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:false];
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 5;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"CcellId";
    CollectionViewDataCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
//    cell.backgroundColor = UIColor.orangeColor;
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake(_collectionView.frame.size.width/2 - 20, _collectionView.frame.size.height - 20);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(10, 10, 10, 10);
}
//collection
//- (void)scrollViewDidScroll:(UIScrollView *)scrollView
//{
//    if (![scrollView isKindOfClass:[UICollectionView class]]) return;
//    
//    CGFloat horizontalOffset = scrollView.contentOffset.x;
//    self.collectionView = (UICollectionView *)scrollView;
//    NSInteger index = [self.collectionView indexPathForCell:<#(nonnull UICollectionViewCell *)#>]
//}
@end
