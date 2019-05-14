//
//  ViewController.h
//  TestCollections
//
//  Created by 3 Embed on 06/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

