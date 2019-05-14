//
//  ViewController.h
//  AnimatedImages
//
//  Created by 3 Embed on 09/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainVC : UIViewController
@property BOOL isFlipped;
@end

@interface MainVC()
@property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIButton *startButton;
@property (nonatomic,strong) UIButton *stopButton;
@property (nonatomic,strong) UIStackView *stackView;
@property (nonatomic,strong) UIView *flipedView;
@property (nonatomic,strong) UILabel *headerLabel;
@property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UIStackView *labelStackView;
@end
