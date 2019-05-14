//
//  ViewController.m
//  TableData
//
//  Created by 3 Embed on 07/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import "MainVC.h"
@interface MainVC () <UITableViewDelegate,UITableViewDataSource>
@end

@implementation MainVC

- (void)loadView {
    [super loadView];
    [self addSubViews];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    DataServicer *shared = [DataServicer sharedInstance];
    [shared loadData];
    [self tableDataSetup];
}

-(UITableView *)makeTableView {
    UITableView *tableView = [[UITableView alloc] init];
    tableView.translatesAutoresizingMaskIntoConstraints = NO;
    tableView.backgroundColor = UIColor.whiteColor;
    tableView.rowHeight = UITableViewAutomaticDimension;
    tableView.estimatedRowHeight = 100;
    tableView.separatorInset = UIEdgeInsetsMake(0, 5, 0, 5);
    tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    tableView.bounces = YES;
    return tableView;
    
}


- (void)addSubViews {
    self.view.backgroundColor = UIColor.cyanColor;
    self.tableView = [self makeTableView];
    [self.view addSubview: self.tableView];
    
    [NSLayoutConstraint activateConstraints:@[
                                              [self.tableView.topAnchor constraintEqualToAnchor:self.view.topAnchor],
                                              [self.tableView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor],
                                              [self.tableView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor],
                                              [self.tableView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor]
                                              ]];
    
    
    
}


- (void)tableDataSetup {
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerNib:[UINib nibWithNibName:@"TableDataCell" bundle:nil] forCellReuseIdentifier:DataCell.reuseIdentifier];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[[DataServicer sharedInstance] cellData] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    DataCell *cell = [tableView dequeueReusableCellWithIdentifier:DataCell.reuseIdentifier forIndexPath:indexPath];
    if (cell == nil){
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"TableDataCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    [cell updateCell:[[[DataServicer sharedInstance] cellData] objectAtIndex:indexPath.row]];
    return cell;
}
@end
