//
//  ViewController.h
//  TabBarVCS
//
//  Created by 3 Embed on 15/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstVC : UIViewController


@end

@interface FirstVC () <UIScrollViewDelegate>
@property (strong,nonatomic) UIScrollView *scrollView;
@property (strong,nonatomic) UIView *contentView;
@property (strong,nonatomic) UIView *view1;
@property (strong,nonatomic) UIView *view2;
@property (strong,nonatomic) UIView *view3;
@property (strong,nonatomic) UIView *view4;
@property (strong,nonatomic) UIView *view5;
@property (strong,nonatomic) UIView *view6;
@property (strong,nonatomic) UIStackView *stackView;
@end
