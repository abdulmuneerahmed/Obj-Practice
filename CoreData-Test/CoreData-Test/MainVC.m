//
//  ViewController.m
//  CoreData-Test
//
//  Created by 3 Embed on 17/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import "MainVC.h"

@interface MainVC ()

@end

@implementation MainVC

//@synthesize tableView;

- (void)loadView {
    [super loadView];
    [self addSubViews];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

-(UITableView *)addtableView {
    UITableView *tableView = [[UITableView alloc] init];
    tableView.translatesAutoresizingMaskIntoConstraints = NO;
    tableView.backgroundColor = UIColor.whiteColor;
    return tableView;
}

-(UIBarButtonItem *)addrightBarButton {
    UIBarButtonItem *rightBarbutton = [[UIBarButtonItem alloc] init];
    [rightBarbutton setTitle:@"Action"];
    
    return rightBarbutton;
}

-(void)addSubViews {
    self.view.backgroundColor = UIColor.whiteColor;
    self.tableView = [self addtableView];
    [self.view addSubview:self.tableView];
    [NSLayoutConstraint activateConstraints:@[
                                              [self.tableView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:0],
                                              [self.tableView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:0],
                                              [self.tableView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:0],
                                              [self.tableView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:0]
                                              ]];
}

@end
