//
//  CollectionViewDataCell.m
//  TestCollections
//
//  Created by 3 Embed on 07/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import "CollectionViewDataCell.h"

@implementation CollectionViewDataCell

- (void)awakeFromNib
{
    [super awakeFromNib];
    [self cellViewSetUp];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

- (void)cellViewSetUp
{
    _imageView.contentMode = UIViewContentModeScaleAspectFill;
    _imageView.backgroundColor = UIColor.grayColor;
    _imageView.layer.cornerRadius = 10;
    _imageView.clipsToBounds = YES;
    _imageView.translatesAutoresizingMaskIntoConstraints = NO;
//    _imageView.layer.masksToBounds = YES;
    [self.backgroundView addSubview:_imageView];
    self.titleLabel.text = @"Abdul Muneer Ahmed ";
//    NSLog(@"Loading");
//    [NSLayoutConstraint activateConstraints:@[
//            [_imageView.topAnchor constraintEqualToAnchor:self.topAnchor],
//            [_imageView.leadingAnchor constraintEqualToAnchor:self.leadingAnchor],
//            [_imageView.trailingAnchor constraintEqualToAnchor:self.trailingAnchor],
//            [_imageView.bottomAnchor constraintEqualToAnchor:self.bottomAnchor]
//                                              ]
//     ];
    //[_imageView.topAnchor constraintEqualToAnchor:self.backgroundView.topAnchor].active = YES;
    //[_imageView.leadingAnchor constraintEqualToAnchor:self.backgroundView.leadingAnchor].active = YES;
    //[_imageView.trailingAnchor constraintEqualToAnchor:self.backgroundView.trailingAnchor].active = YES;
    //[_imageView.bottomAnchor constraintEqualToAnchor:self.backgroundView.bottomAnchor].active = YES;
    
}

@end
