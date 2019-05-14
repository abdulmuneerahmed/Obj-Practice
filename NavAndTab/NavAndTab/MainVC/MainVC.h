//
//  ViewController.h
//  NavAndTab
//
//  Created by 3 Embed on 14/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "../Extensions/UIView+Anchors.h"
#import "../SecondVc/SecondVC.h"

@interface MainVC : UIViewController


@end

@interface MainVC()
@property (strong,nonatomic) UIButton *nextButton;
@property (strong,nonatomic) UILabel *headerLabel;
@end
