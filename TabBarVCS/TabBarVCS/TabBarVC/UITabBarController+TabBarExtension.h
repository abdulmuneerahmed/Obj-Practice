//
//  UITabBarController+TabBarExtension.h
//  TabBarVCS
//
//  Created by 3 Embed on 15/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITabBarController (TabBarExtension)
-(UINavigationController *)createControllersWithVC:(UIViewController *)vc withSelectedImage:(UIImage *)selectedImage withTag:(int)tag withTitle:(NSString *)title withUnSelectedImage:(UIImage *)unselectedImage;
@end

NS_ASSUME_NONNULL_END

