//
//  SecondVC.h
//  NavAndTab
//
//  Created by 3 Embed on 14/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "../Extensions/UIView+Anchors.h"
#import "../ThirdVC/ThirdVC.h"

NS_ASSUME_NONNULL_BEGIN

@interface SecondVC : UIViewController

@end

NS_ASSUME_NONNULL_END
@interface SecondVC ()
@property (strong,nonatomic) UIButton *nextButton;
@property (strong,nonatomic) UILabel *headerLabel;
@end
