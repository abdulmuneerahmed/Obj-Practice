//
//  UITabBarController+TabBarExtension.m
//  TabBarVCS
//
//  Created by 3 Embed on 15/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import "UITabBarController+TabBarExtension.h"

@implementation UITabBarController (TabBarExtension)
- (UINavigationController *)createControllersWithVC:(UIViewController *)vc withSelectedImage:(UIImage *)selectedImage withTag:(int)tag withTitle:(NSString *)title withUnSelectedImage:(UIImage *)unselectedImage {
    UINavigationController *navVC = [[UINavigationController alloc] initWithRootViewController:vc];
    navVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:title image:unselectedImage tag:tag];
    navVC.tabBarItem.selectedImage = selectedImage;
    return navVC;
}
@end
