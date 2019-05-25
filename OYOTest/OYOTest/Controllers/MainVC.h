//
//  ViewController.h
//  OYOTest
//
//  Created by 3 Embed on 22/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "../Extensions/UITextField+TextFieldSpacing.h"

@interface MainVC : UIViewController

@end

// MARK: - Class Extension -
@interface MainVC ()

// Background Blur Image Variable
@property (strong,nonatomic) UIImageView *imageView;

// Custom Segment Variables
@property (strong,nonatomic) UIStackView *segmentStackView;
@property (strong,nonatomic) UIView *segmentView;
@property (strong,nonatomic) UIButton *loginSegmentButton;
@property (strong,nonatomic) UIButton *signUpSegmentButton;

// Login and SignUp Background Views
@property (strong,nonatomic) UIView *loginBackgroundView;
@property (strong,nonatomic) UIView *signupBackgroundView;

// TextFields and stackView
@property (strong,nonatomic) UITextField *loginUsernameTF;
@property (strong,nonatomic) UITextField *loginPasswordTF;
@property (strong,nonatomic) UIStackView *loginStackView;
@property (strong,nonatomic) UIView *loginBoarderView;
@property (strong,nonatomic) UIView *loginBackgroundStackView;

// Forgetmessage Label and Help Button
@property (strong,nonatomic) UILabel *forgottenLabel;
@property (strong,nonatomic) UIButton *getHelpInSignIn;
@property (strong,nonatomic) UIStackView *userAlternativeOption;

// Login Button
@property (strong,nonatomic) UIButton *loginButton;

//Scroll View
@property (strong,nonatomic) UIScrollView *scrollView;
@property (strong,nonatomic) UIView *contentView;
@property (strong,nonatomic) UIStackView *baseSignupStackView;

// SignUp Button
@property (strong,nonatomic) UIImageView *signupProfileimageview;
@property (strong,nonatomic) UIButton *signUpButton;
@property (strong,nonatomic) UITextField *nameTextField;
@property (strong,nonatomic) UIView *nameBorder;
@property (strong,nonatomic) UITextField *usernameTextField;
@property (strong,nonatomic) UIView *usernameBorder;
@property (strong,nonatomic) UITextField *passwordTextField;
@property (strong,nonatomic) UIView *passwordBorder;
@property (strong,nonatomic) UITextField *emailTextField;
@property (strong,nonatomic) UITextField *phoneNumberTextField;
@property (strong,nonatomic) UIView *phoneNumberBorder;
@property (strong,nonatomic) UIView *signupBackgroundStackView;
@property (strong,nonatomic) UIStackView *signupStackView;


@end
