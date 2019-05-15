//
//  ViewController.m
//  TabBarVCS
//
//  Created by 3 Embed on 15/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import "FirstVC.h"

@interface FirstVC ()

@end

@implementation FirstVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.brownColor
    ;
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationController.navigationBar.prefersLargeTitles = YES;
    self.navigationItem.title = @"First";
}


@end
