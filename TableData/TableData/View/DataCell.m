//
//  DataCell.m
//  TableData
//
//  Created by 3 Embed on 07/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import "DataCell.h"

@implementation DataCell

//@synthesize imageView;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    //    [self addCellSubViews];
}


//- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
//{
//    if (!(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])) return nil;
//    [self addCellSubViews];
//    return self;
//}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

//-(UILabel *) addtitleLabel {
//    UILabel * titleLabel = [[UILabel alloc] init];
//    titleLabel.textAlignment = NSTextAlignmentJustified;
//    titleLabel.textColor = UIColor.blackColor;
//    titleLabel.font = [UIFont fontWithName:@"AvenirNext-Medium" size:20];
//    titleLabel.numberOfLines = 0;
//    titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
//    return titleLabel;
//}
//
//- (UIImageView *)addimageView {
//    UIImageView *imageView = [[UIImageView alloc] init];
//    imageView.contentMode = UIViewContentModeScaleAspectFit;
//    imageView.translatesAutoresizingMaskIntoConstraints = NO;
////    [imageView setImage:[UIImage imageNamed:@"screen"]];
//    imageView.image = [UIImage imageNamed:@"screen3"];
////    ima
//    imageView.layer.cornerRadius = 10;
//    imageView.clipsToBounds = YES;
//    return imageView;
//}

//- (void)addCellSubViews {

//    UIImageView *imageView = [[UIImageView alloc] init];
//   imageView = [self addimageView];
//    [self addSubview:imageView];
//
//    [NSLayoutConstraint activateConstraints:@[
//                [imageView.topAnchor constraintEqualToAnchor:self.topAnchor],
//                [imageView.leadingAnchor constraintEqualToAnchor:self.leadingAnchor],
//                [imageView.trailingAnchor constraintEqualToAnchor:self.trailingAnchor]
//                                              ]];
//    [imageView addConstraint:[NSLayoutConstraint constraintWithItem:imageView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:imageView attribute:NSLayoutAttributeWidth multiplier:imageView.frame.size.height/imageView.frame.size.width constant:0]];
//
//    self.label = [self addtitleLabel];
//    [self addSubview:self.label];
//    [NSLayoutConstraint activateConstraints:@[
//                [self.label.topAnchor constraintEqualToAnchor:imageView.bottomAnchor constant:10],
//                [self.label.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:10],
//                [self.label.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant:-10],
//                [self.label.bottomAnchor constraintEqualToAnchor:self.bottomAnchor constant:-10],
////                [self.label.widthAnchor constraintEqualToAnchor:self.imageView.widthAnchor constant:0]
//                                              ]];
//}

+ (NSString *)reuseIdentifier {
    return @"CellId";
}

- (void)updateCell:(TableDataCell *)data{
    self.customImageView.image = [UIImage imageNamed:data.imageData];
    self.customTitleView.text = data.titleData;
}

@end
