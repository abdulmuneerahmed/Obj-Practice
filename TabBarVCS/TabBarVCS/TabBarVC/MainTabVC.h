//
//  MainTabVC.h
//  TabBarVCS
//
//  Created by 3 Embed on 15/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UITabBarController+TabBarExtension.h"
#import "../VC1/FirstVC.h"
#import "../VC2/SecondVC.h"
#import "../VC3/ThirdVC.h"
#import "TabBarAnimatedTransition.h"

NS_ASSUME_NONNULL_BEGIN

@interface MainTabVC : UITabBarController

@end

NS_ASSUME_NONNULL_END

@interface MainTabVC () <UITabBarControllerDelegate>

@end
