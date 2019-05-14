//
//  ViewController.m
//  ScrollViewTest
//
//  Created by 3 Embed on 13/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import "MainVC.h"

@interface MainVC ()

@end

@implementation MainVC

- (void)loadView {
    [super loadView];
    [self addSubViews];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

-(UIScrollView *)addscrollView {
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.translatesAutoresizingMaskIntoConstraints = NO;
    return scrollView;
}

-(UIView *)addView {
    UIView *view = [[UIView alloc] init];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    return view;
}

-(void)addSubViews {
    self.view.backgroundColor = UIColor.whiteColor;
    self.scrollView = [self addscrollView];
    [self.view addSubview:self.scrollView];
    
    [NSLayoutConstraint activateConstraints:@[
                                              [self.scrollView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:0],
                                              [self.scrollView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:0],
                                              [self.scrollView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:0],
                                              [self.scrollView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:0]
                                              ]];
    self.contentView = [self addView];
    
    [self.scrollView addSubview:self.contentView];
    [NSLayoutConstraint activateConstraints:@[
                                              [self.contentView.topAnchor constraintEqualToAnchor:self.scrollView.topAnchor constant:0],
                                              [self.contentView.leadingAnchor constraintEqualToAnchor:self.scrollView.leadingAnchor constant:0],
                                              [self.contentView.trailingAnchor constraintEqualToAnchor:self.scrollView.trailingAnchor constant:0],
                                              [self.contentView.bottomAnchor constraintEqualToAnchor:self.scrollView.bottomAnchor constant:0],
                                              [self.contentView.widthAnchor constraintEqualToAnchor:self.view.widthAnchor constant:0]
                                              ]];

    NSLayoutConstraint *heightConstraints = [self.contentView.heightAnchor constraintEqualToAnchor:self.view.heightAnchor constant:0];
    heightConstraints.priority = UILayoutPriorityDefaultLow;
    heightConstraints.active = YES;
    
    
    self.view1 = [self addView];
    self.view2 = [self addView];
    self.view3 = [self addView];
    self.view4 = [self addView];
    self.view5 = [self addView];
    self.view6 = [self addView];
    
    self.view1.backgroundColor = UIColor.blackColor;
    self.view2.backgroundColor = UIColor.blueColor;
    self.view3.backgroundColor = UIColor.brownColor;
    self.view4.backgroundColor = UIColor.redColor;
    self.view5.backgroundColor = UIColor.darkGrayColor;
    self.view6.backgroundColor = UIColor.cyanColor;
    
    /*
    [self.contentView addSubview:self.view1];
    
    [NSLayoutConstraint activateConstraints:@[
                                              [self.view1.topAnchor constraintEqualToAnchor:self.contentView.safeAreaLayoutGuide.topAnchor constant:10],
                                              [self.view1.leadingAnchor constraintEqualToAnchor:self.contentView.leadingAnchor constant:0],
                                              [self.view1.trailingAnchor constraintEqualToAnchor:self.contentView.trailingAnchor constant:0],
                                              [self.view1.heightAnchor constraintEqualToConstant:200]
                                              ]];
    
    [self.contentView addSubview:self.view2];
    
    [NSLayoutConstraint activateConstraints:@[
                                              [self.view2.topAnchor constraintEqualToAnchor:self.view1.bottomAnchor constant:10],
                                              [self.view2.leadingAnchor constraintEqualToAnchor:self.contentView.leadingAnchor constant:0],
                                              [self.view2.trailingAnchor constraintEqualToAnchor:self.contentView.trailingAnchor constant:0],
                                              [self.view2.heightAnchor constraintEqualToConstant:500]
                                              ]];
    [self.contentView addSubview:self.view3];
    
    [NSLayoutConstraint activateConstraints:@[
                                              [self.view3.topAnchor constraintEqualToAnchor:self.view2.bottomAnchor constant:10],
                                              [self.view3.leadingAnchor constraintEqualToAnchor:self.contentView.leadingAnchor constant:0],
                                              [self.view3.trailingAnchor constraintEqualToAnchor:self.contentView.trailingAnchor constant:0],
                                              [self.view3.heightAnchor constraintEqualToConstant:800]
                                              ]];
    [self.contentView addSubview:self.view4];
    
    [NSLayoutConstraint activateConstraints:@[
                                              [self.view4.topAnchor constraintEqualToAnchor:self.view3.bottomAnchor constant:10],
                                              [self.view4.leadingAnchor constraintEqualToAnchor:self.contentView.leadingAnchor constant:0],
                                              [self.view4.trailingAnchor constraintEqualToAnchor:self.contentView.trailingAnchor constant:0],
                                              [self.view4.heightAnchor constraintEqualToConstant:500]
                                              ]];
    [self.contentView addSubview:self.view5];
    
    [NSLayoutConstraint activateConstraints:@[
                                              [self.view5.topAnchor constraintEqualToAnchor:self.view4.bottomAnchor constant:10],
                                              [self.view5.leadingAnchor constraintEqualToAnchor:self.contentView.leadingAnchor constant:0],
                                              [self.view5.trailingAnchor constraintEqualToAnchor:self.contentView.trailingAnchor constant:0],
                                              [self.view5.heightAnchor constraintEqualToConstant:100]
                                              ]];
    [self.contentView addSubview:self.view6];
    
    [NSLayoutConstraint activateConstraints:@[
                                              [self.view6.topAnchor constraintEqualToAnchor:self.view5.bottomAnchor constant:10],
                                              [self.view6.leadingAnchor constraintEqualToAnchor:self.contentView.leadingAnchor constant:0],
                                              [self.view6.trailingAnchor constraintEqualToAnchor:self.contentView.trailingAnchor constant:0],
                                              [self.view6.heightAnchor constraintEqualToConstant:500],
                                              [self.view6.bottomAnchor constraintEqualToAnchor:self.contentView.bottomAnchor constant:0]
                                              ]];
    */
    
    
    self.stackView = [self addStackView:[[NSArray alloc] initWithObjects:self.view1,self.view2,self.view3,self.view4,self.view5,self.view6, nil]];
    self.stackView.axis = UILayoutConstraintAxisVertical;
    self.stackView.spacing = 10;
    [self.contentView addSubview:self.stackView];
    
    [NSLayoutConstraint activateConstraints:@[
                                              [self.stackView.topAnchor constraintEqualToAnchor:self.contentView.safeAreaLayoutGuide.topAnchor constant:0],
                                              [self.stackView.leadingAnchor constraintEqualToAnchor:self.contentView.safeAreaLayoutGuide.leadingAnchor constant:0],
                                              [self.stackView.trailingAnchor constraintEqualToAnchor:self.contentView.safeAreaLayoutGuide.trailingAnchor constant:0],
                                              [self.stackView.bottomAnchor constraintEqualToAnchor:self.contentView.bottomAnchor constant:-20]
                                              ]];
    
    [self.view1.heightAnchor constraintEqualToConstant:500].active = YES;
    [self.view2.heightAnchor constraintEqualToConstant:100].active = YES;
    [self.view3.heightAnchor constraintEqualToConstant:50].active = YES;
    [self.view4.heightAnchor constraintEqualToConstant:800].active = YES;
    [self.view5.heightAnchor constraintEqualToConstant:200].active = YES;
    [self.view6.heightAnchor constraintEqualToConstant:300].active = YES;
    
}

-(UIStackView *)addStackView:(NSArray *)views {
    UIStackView *stackView = [[UIStackView alloc] initWithArrangedSubviews:views];
    stackView.translatesAutoresizingMaskIntoConstraints = NO;
    return stackView;
}

@end
