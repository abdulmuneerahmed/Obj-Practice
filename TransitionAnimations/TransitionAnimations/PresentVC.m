//
//  PresentVC.m
//  TransitionAnimations
//
//  Created by 3 Embed on 10/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import "PresentVC.h"

@interface PresentVC ()

@end

@implementation PresentVC

- (void)loadView {
    [super loadView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addSubViews];
}

-(UIButton *)addDismissButton {
    UIButton *button = [[UIButton alloc] init];
    button.backgroundColor = UIColor.blueColor;
    [button setTitle:@"Dismiss" forState:UIControlStateNormal];
    [button setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
    button.translatesAutoresizingMaskIntoConstraints = NO;
    [button addTarget:self action:@selector(dismissView) forControlEvents:UIControlEventTouchUpInside];
    button.layer.cornerRadius = 10;
    return button;
}

-(void)addSubViews {
    self.view.backgroundColor = UIColor.cyanColor;
    dismisButton = [self addDismissButton];
    [self.view addSubview:dismisButton];
    [NSLayoutConstraint activateConstraints:@[
                                              [dismisButton.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor constant:0],
                                              [dismisButton.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor constant:0],
                                              [dismisButton.widthAnchor constraintEqualToAnchor:self.view.widthAnchor multiplier:0.6],
                                              [dismisButton.heightAnchor constraintEqualToConstant:45]
                                              ]];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)dismissView {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
