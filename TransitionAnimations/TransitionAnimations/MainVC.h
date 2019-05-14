//
//  ViewController.h
//  TransitionAnimations
//
//  Created by 3 Embed on 10/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PresentVC.h"

@interface MainVC : UIViewController{
    NSArray *tableData;
}

@end

@interface MainVC() <UITableViewDelegate,UITableViewDataSource,UIViewControllerTransitioningDelegate>
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UIBarButtonItem *rightBarButton;
@end
