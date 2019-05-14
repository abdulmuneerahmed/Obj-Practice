//
//  SecondVC.m
//  NavAndTab
//
//  Created by 3 Embed on 14/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import "SecondVC.h"

@interface SecondVC ()

@end

@implementation SecondVC

- (void)loadView {
    [super loadView];
    [self navSetup];
    [self addSubViews];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

-(UILabel *)addLabel {
    UILabel *label = [[UILabel alloc] init];
    label.font = [UIFont fontWithName:@"AvenirNext-Heavy" size:80];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"2";
    label.textColor = UIColor.whiteColor;
    return label;
}

-(UIButton *)addButton {
    UIButton *button = [[UIButton alloc] init];
    [button setTitle:@"NEXT" forState:UIControlStateNormal];
    [button setTitleColor:UIColor.brownColor forState:UIControlStateNormal];
    button.backgroundColor = UIColor.whiteColor;
    [button addTarget:self action:@selector(nextVC) forControlEvents:UIControlEventTouchUpInside];
    return button;
}

-(void)addSubViews {
    self.headerLabel = [self addLabel];
    [self.view addSubview:self.headerLabel];
    [self.headerLabel setTitleCenter:self.view.centerXAnchor centerY:self.view.centerYAnchor width:self.view.frame.size.width - 50 height:400];
    self.nextButton = [self addButton];
    [self.view addSubview:self.nextButton];
    [self.nextButton setButtonCons:self.view.safeAreaLayoutGuide.bottomAnchor centerX:self.view.centerXAnchor width:self.view.frame.size.width - 100 height:50];
}

-(void)navSetup {
    self.view.backgroundColor = UIColor.brownColor;
    self.navigationItem.title = @"Second";
    self.navigationController.navigationBar.largeTitleTextAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor]};
//    self.navigationController.navigationBar.barTintColor = [UIColor lightGrayColor];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)nextVC {
    ThirdVC *thirdVC = [[ThirdVC alloc] init];
    [self.navigationController pushViewController:thirdVC animated:YES];
}

@end
