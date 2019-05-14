//
//  ViewController.m
//  TestCollections
//
//  Created by 3 Embed on 06/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import "ViewController.h"
#import "CollectionTableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)loadView {
    [super loadView];
    _tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    _tableView.showsVerticalScrollIndicator = false;
    _tableView.separatorInset = UIEdgeInsetsMake(0, 0, 0, 0);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return  200;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *reusableId = @"CellId";
    CollectionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reusableId forIndexPath:indexPath];
    if (cell == nil){
        cell = [[CollectionTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reusableId];
    }
//    [cell reset];
    return cell;
}

@end
