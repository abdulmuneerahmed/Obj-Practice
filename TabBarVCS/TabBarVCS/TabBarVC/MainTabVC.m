//
//  MainTabVC.m
//  TabBarVCS
//
//  Created by 3 Embed on 15/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import "MainTabVC.h"

@interface MainTabVC ()

@end

@implementation MainTabVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.whiteColor;
    self.delegate = self;
    [self setUp];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void) setUp {
    UINavigationController *vc1 = [self createControllersWithVC:[[FirstVC alloc] init] withSelectedImage:[UIImage imageNamed:@" "] withTag:0 withTitle:@"First" withUnSelectedImage:[UIImage imageNamed:@" "]];
    UINavigationController *vc2 = [self createControllersWithVC:[[SecondVC alloc] init] withSelectedImage:[UIImage imageNamed:@" "] withTag:0 withTitle:@"Second" withUnSelectedImage:[UIImage imageNamed:@" "]];
    UINavigationController *vc3 = [self createControllersWithVC:[[ThirdVC alloc] init] withSelectedImage:[UIImage imageNamed:@" "] withTag:0 withTitle:@"Third" withUnSelectedImage:[UIImage imageNamed:@" "]];
    self.viewControllers = [[NSArray alloc] initWithObjects:vc1,vc2,vc3, nil];
    self.tabBar.barStyle = UIBarStyleDefault;
}

- (id<UIViewControllerAnimatedTransitioning>)tabBarController:(UITabBarController *)tabBarController animationControllerForTransitionFromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC {
    return [TabBarAnimatedTransition alloc];
}

@end
