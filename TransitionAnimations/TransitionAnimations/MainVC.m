//
//  ViewController.m
//  TransitionAnimations
//
//  Created by 3 Embed on 10/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import "MainVC.h"

@interface MainVC ()
@end

@implementation MainVC

- (void)loadView {
    [super loadView];
    [self setUp];
    [self addSubviews];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    tableData  = [[NSArray alloc] initWithObjects:@"item1",@"item2", nil];
    [self tableData];
}

-(UIBarButtonItem *)addrightBarButton {
    UIBarButtonItem *button = [[UIBarButtonItem alloc] initWithTitle:@"Action" style:UIBarButtonItemStylePlain target:self action:@selector(nextVc)];
    button.tintColor = UIColor.blueColor;
//    [button.title tes]
    return button;
}
-(void)setUp {
    self.view.backgroundColor = UIColor.whiteColor;
    self.navigationController.navigationBar.barTintColor = UIColor.whiteColor;
    self.rightBarButton = [self addrightBarButton];
    self.navigationItem.rightBarButtonItem = self.rightBarButton;
}

-(UITableView *)addtableView {
    UITableView * tableview = [[UITableView alloc] init];
    tableview.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    tableview.translatesAutoresizingMaskIntoConstraints = NO;
    return tableview;
}

-(void)addSubviews {
    self.tableView = [self addtableView];
    [self.view addSubview:self.tableView];
    
    [NSLayoutConstraint activateConstraints:@[
                                              [self.tableView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:0],
                                              [self.tableView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:0],
                                              [self.tableView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:0],
                                              [self.tableView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:0]
                                              ]];
}

-(void)tableData {
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:UITableViewCell.self forCellReuseIdentifier:@"CellId"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return tableData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellId" forIndexPath:indexPath];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CellId"];
    }
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    return cell;
}

// MARK: - Selectors -
-(void)nextVc {
    PresentVC *vc = [[PresentVC alloc] init];
    vc.transitioningDelegate = self;
    [self presentViewController:vc animated:YES completion:nil];
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source{
    return [[CustomPresentAnimationController alloc] init];
}

@end
