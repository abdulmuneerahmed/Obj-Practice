//
//  ViewController.m
//  OYOTest
//
//  Created by 3 Embed on 22/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import "MainVC.h"

@interface MainVC ()

@end

@implementation MainVC


- (void)loadView {
    [super loadView];
    [self loadSubviews];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

//MARK: - ImageView Function -
-(UIImageView *)addimageView {
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.translatesAutoresizingMaskIntoConstraints = NO;
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    return imageView;
}

//MARK: - Segment Function -
-(UIView *)addsegmentView {
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = UIColor.clearColor;
    view.layer.borderColor = UIColor.lightGrayColor.CGColor;
    view.layer.borderWidth = 2;
    view.translatesAutoresizingMaskIntoConstraints = NO;
    view.layer.cornerRadius = 25;
    view.clipsToBounds = YES;
    return view;
}

//MARK: - StackView Function -
-(UIStackView *)addStackView:(NSArray<UIView *> *)views {
    UIStackView *stackView = [[UIStackView alloc] initWithArrangedSubviews:views];
    stackView.backgroundColor = UIColor.clearColor;
    stackView.translatesAutoresizingMaskIntoConstraints = NO;
    return  stackView;
}

//MARK: - Button Function
-(UIButton *)addButton {
    UIButton *button = [[UIButton alloc] init];
    button.translatesAutoresizingMaskIntoConstraints = NO;
    return button;
}

//MARK: - Label Function -
-(UILabel *)addLabel {
    UILabel *label = [[UILabel alloc] init];
    return label;
}

//MARK: - Textfield Function -
-(UITextField *)addTextField:(NSString *)placeholder {
    UITextField *textfield = [[UITextField alloc] init];
    NSRange range = [placeholder rangeOfString:placeholder];
    textfield.textColor = UIColor.whiteColor;
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:placeholder];
    [attributeString setAttributes:@{NSFontAttributeName:[UIFont fontWithName:@"Avenirnext-Medium" size:16]} range:range];
    [attributeString addAttribute:NSForegroundColorAttributeName value:[UIColor whiteColor] range:range];
    textfield.attributedPlaceholder = attributeString;
    textfield.translatesAutoresizingMaskIntoConstraints = NO;
    return textfield;
}
//MARK: - CustomView Function -
-(UIView *)addView {
    UIView *view = [[UIView alloc] init];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    return view;
}

//MARK: - Boarder Function -
-(UIView *)borderView {
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = UIColor.lightGrayColor;
    view.translatesAutoresizingMaskIntoConstraints = NO;
    return view;
}

//MARK: - ScrollView Function -
-(UIScrollView *)addScrollView {
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.backgroundColor = UIColor.clearColor;
    
    scrollView.translatesAutoresizingMaskIntoConstraints = NO;
    return scrollView;
}

//MARK: - ProfileimageView Function -
-(UIImageView *)addprofileimageView{
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    imageView.translatesAutoresizingMaskIntoConstraints = NO;
    return imageView;
}

//MARK: - Loading SubViews -
-(void)loadSubviews {
    self.view.backgroundColor = UIColor.whiteColor;
    //MARK: - Blur Background Image
    self.imageView = [self addimageView];
    self.imageView.image = [UIImage imageNamed:@"blur_bg_image"];
    [self.view addSubview:self.imageView];
    [NSLayoutConstraint activateConstraints:@[
                                              [self.imageView.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:0],
                                              [self.imageView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:0],
                                              [self.imageView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:0],
                                              [self.imageView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:0]
                                              ]];
    //MARK: - Custom Segment
    self.segmentView = [self addsegmentView];
    [self.view addSubview:self.segmentView];
    [NSLayoutConstraint activateConstraints:@[
                                              [self.segmentView.heightAnchor constraintEqualToConstant:50],
                                              [self.segmentView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor constant:0],
                                              [self.segmentView.widthAnchor constraintEqualToAnchor:self.view.widthAnchor multiplier:0.6],
                                              [self.segmentView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:10]
                                              ]];
    //Customization of Login Segment Button
    self.loginSegmentButton = [self addButton];
    [self.loginSegmentButton setTitle:@"Log In" forState:UIControlStateNormal];
    [self.loginSegmentButton setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
    self.loginSegmentButton.backgroundColor = [UIColor colorWithRed:119/255.0f green:119/255.0f blue:119/255.0f alpha:0.6f];
    self.loginSegmentButton.titleLabel.font = [UIFont fontWithName:@"Avenirnext-Medium" size:15];
    [self.loginSegmentButton addTarget:self action:@selector(loginSegmentAction) forControlEvents:UIControlEventTouchUpInside];
    
    //Customization of SigUp Segment Button
    self.signUpSegmentButton = [self addButton];
    [self.signUpSegmentButton setTitle:@"Sign Up" forState:UIControlStateNormal];
    [self.signUpSegmentButton setTitleColor:[UIColor colorWithRed:119/255.0F green:119/255.0f blue:119/255.0f alpha:0.6f] forState:UIControlStateNormal];
    self.signUpSegmentButton.titleLabel.font = [UIFont fontWithName:@"Avenirnext-Medium" size:15];
    [self.signUpSegmentButton addTarget:self action:@selector(signUpSegmentAction) forControlEvents:UIControlEventTouchUpInside];
    self.segmentStackView = [self addStackView:[[NSArray alloc] initWithObjects:self.loginSegmentButton,self.signUpSegmentButton, nil]];
    self.segmentStackView.axis = UILayoutConstraintAxisHorizontal;
    self.segmentStackView.distribution = UIStackViewDistributionFillEqually;
    
    
    //Adding StackView
    [self.segmentView addSubview:self.segmentStackView];
    
    [NSLayoutConstraint activateConstraints:@[
                                              [self.segmentStackView.topAnchor constraintEqualToAnchor:self.segmentView.topAnchor constant:0],
                                              [self.segmentStackView.bottomAnchor constraintEqualToAnchor:self.segmentView.bottomAnchor constant:0],
                                              [self.segmentStackView.leadingAnchor constraintEqualToAnchor:self.segmentView.leadingAnchor constant:0],
                                              [self.segmentStackView.trailingAnchor constraintEqualToAnchor:self.segmentView.trailingAnchor constant:0]
                                              ]];
    // Loading Login View
    [self addLoginView];
    //Loading SignUp View
    [self addSignUpView];
    
}


// MARK: - Login View Setup Function -
-(void) addLoginView {
    // Adding Login Fields in the Login View SetUP
    //MARK: - Login Background Setup
    self.loginBackgroundView = [self addView];
    [self.view addSubview:self.loginBackgroundView];
    [NSLayoutConstraint activateConstraints:@[
                [self.loginBackgroundView.topAnchor constraintEqualToAnchor:self.segmentView.bottomAnchor constant:60],
                [self.loginBackgroundView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:0],
                [self.loginBackgroundView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:0],
                [self.loginBackgroundView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:0]
                                              ]];
    self.loginBackgroundView.backgroundColor = UIColor.clearColor;
    // Customizing Background View Of StackView
    self.loginBackgroundStackView = [self addView];
    self.loginBackgroundStackView.backgroundColor = [UIColor colorWithRed:119/255.0f green:119/255.0f blue:119/255.0f alpha:0.6f];
    self.loginBackgroundStackView.layer.cornerRadius = 5;
    
    CGFloat a = 20;
    // Customizing The Textfields
    self.loginUsernameTF = [self addTextField:@"UserName"];
    [self.loginUsernameTF setPaddingWithSpace:&a withImage:@""];
    self.loginPasswordTF = [self addTextField:@"Password"];
    [self.loginPasswordTF setPaddingWithSpace:&a withImage:@""];
    [self.loginPasswordTF setSecureTextEntry:YES];
    
    // Customizing Boarder Line Between TextFields
    self.loginBoarderView = [self addView];
    self.loginBoarderView.backgroundColor = UIColor.lightGrayColor;
    
    // Putting TextFields and borderLine in StackView
    self.loginStackView = [self addStackView:[[NSArray alloc] initWithObjects:self.loginUsernameTF,self.loginBoarderView,self.loginPasswordTF, nil]];
    self.loginStackView.axis = UILayoutConstraintAxisVertical;
    
    // initially adding a BackgroundView to the Super View
    [self.loginBackgroundView addSubview:self.loginBackgroundStackView];
    [NSLayoutConstraint activateConstraints:@[
                                              [self.loginBackgroundStackView.topAnchor constraintEqualToAnchor:self.loginBackgroundView.topAnchor constant:0],
                                              [self.loginBackgroundStackView.centerXAnchor constraintEqualToAnchor:self.loginBackgroundView.centerXAnchor constant:0],
                                              [self.loginBackgroundStackView.heightAnchor constraintEqualToConstant:101],
                                              [self.loginBackgroundStackView.widthAnchor constraintEqualToAnchor:self.loginBackgroundView.widthAnchor multiplier:0.9]
                                              ]];
    
    // Adding StackView TO Background View
    [self.loginBackgroundStackView addSubview:self.loginStackView];
    [NSLayoutConstraint activateConstraints:@[
                                              [self.loginStackView.topAnchor constraintEqualToAnchor:self.loginBackgroundStackView.topAnchor constant:0],
                                              [self.loginStackView.bottomAnchor constraintEqualToAnchor:self.loginBackgroundStackView.bottomAnchor constant:0],
                                              [self.loginStackView.leadingAnchor constraintEqualToAnchor:self.loginBackgroundStackView.leadingAnchor constant:0],
                                              [self.loginStackView.trailingAnchor constraintEqualToAnchor:self.loginBackgroundStackView.trailingAnchor constant:0]
                                              ]];
    
    // Assigning Custom Height For TextFields and Boarder.
    [NSLayoutConstraint activateConstraints:@[
                                              [self.loginUsernameTF.heightAnchor constraintEqualToConstant:50],
                                              [self.loginBoarderView.heightAnchor constraintEqualToConstant:1],
                                              [self.loginPasswordTF.heightAnchor constraintEqualToConstant:50]
                                              
                                              ]];
    
    // Adding User Forgotten Label and Alternative Option Button
    self.forgottenLabel = [self addLabel];
    self.forgottenLabel.text = @"Forgotten your login details?";
    self.forgottenLabel.textColor = UIColor.whiteColor;
    self.forgottenLabel.font = [UIFont fontWithName:@"Avenirnext-Medium" size:13];
    self.forgottenLabel.adjustsFontSizeToFitWidth = YES;
    
    self.getHelpInSignIn = [self addButton];
    [self.getHelpInSignIn setTitle:@"Get help singing in." forState:UIControlStateNormal];
    [self.getHelpInSignIn setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
    self.getHelpInSignIn.titleLabel.font = [UIFont fontWithName:@"Avenirnext-Bold" size:10];
    NSMutableAttributedString *commentString = [[NSMutableAttributedString alloc] initWithString:@"Get help singing in."];
    [commentString addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInteger:NSUnderlineStyleThick] range:NSMakeRange(0, [commentString length])];
    [self.getHelpInSignIn setAttributedTitle:commentString forState:UIControlStateNormal];
    

    
    self.userAlternativeOption = [self addStackView:[[NSArray alloc] initWithObjects:self.forgottenLabel,self.getHelpInSignIn, nil]];
    self.userAlternativeOption.axis = UILayoutConstraintAxisHorizontal;
    self.userAlternativeOption.spacing = 5;
    [self.loginBackgroundView addSubview:self.userAlternativeOption];
    
    [NSLayoutConstraint activateConstraints:@[
                    [self.userAlternativeOption.topAnchor constraintEqualToAnchor:self.loginBackgroundStackView.bottomAnchor constant:15],
                    [self.userAlternativeOption.centerXAnchor constraintEqualToAnchor:self.loginBackgroundView.centerXAnchor constant:0],
                    [self.userAlternativeOption.widthAnchor constraintEqualToAnchor:self.loginBackgroundView.widthAnchor multiplier:0.75],
                    [self.userAlternativeOption.heightAnchor constraintEqualToConstant:20]
                                              ]];
    
    self.loginButton = [self addButton];
    self.loginButton.layer.cornerRadius = 25;
    [self.loginButton setTitle:@"Log In" forState:UIControlStateNormal];
    [self.loginButton setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
    self.loginButton.backgroundColor = [UIColor colorWithRed:92/225.0f green:52/255.0f blue:163/255.0f alpha:0.7f];
    [self.loginBackgroundView addSubview:self.loginButton];
    
    [NSLayoutConstraint activateConstraints:@[
                    [self.loginButton.topAnchor constraintEqualToAnchor:self.userAlternativeOption.bottomAnchor constant:50],
                    [self.loginButton.heightAnchor constraintEqualToConstant:50],
                    [self.loginButton.centerXAnchor constraintEqualToAnchor:self.loginBackgroundView.centerXAnchor constant:0],
                    [self.loginButton.widthAnchor constraintEqualToAnchor:self.loginBackgroundView.widthAnchor multiplier:0.9]
                                              ]];
}

// MARK: - SignUp View Setup Function -
-(void)addSignUpView{
    // Adding Signup View Background.
    self.signupBackgroundView = [self addView];
    [self.signupBackgroundView setHidden:YES];
    self.signupBackgroundView.backgroundColor = UIColor.clearColor;
    [self.view addSubview:self.signupBackgroundView];
    [NSLayoutConstraint activateConstraints:@[
                                              [self.signupBackgroundView.topAnchor constraintEqualToAnchor:self.segmentView.bottomAnchor constant:10],
                                              [self.signupBackgroundView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:0],
                                              [self.signupBackgroundView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:0],
                                              [self.signupBackgroundView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:0]
                                              ]];
    //
    self.scrollView = [self addScrollView];
    self.signUpButton = [self addButton];
    self.signUpButton.layer.cornerRadius = 25;
    [self.signUpButton setTitle:@"Create" forState:UIControlStateNormal];
    [self.signUpButton setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
    self.signUpButton.backgroundColor = [UIColor colorWithRed:92/255.0f green:52/255.0f blue:163/255.0f alpha:0.7f];
    self.baseSignupStackView = [self addStackView:[[NSArray alloc] initWithObjects:self.scrollView,self.signUpButton, nil]];
    self.baseSignupStackView.axis = UILayoutConstraintAxisVertical;
    self.baseSignupStackView.spacing = 10;
    self.baseSignupStackView.distribution = UIStackViewDistributionFill;
    [self.signupBackgroundView addSubview:self.baseSignupStackView];
    
    [NSLayoutConstraint activateConstraints:@[
                                              [self.baseSignupStackView.topAnchor constraintEqualToAnchor:self.signupBackgroundView.topAnchor constant:10],
                                              [self.baseSignupStackView.leadingAnchor constraintEqualToAnchor:self.signupBackgroundView.leadingAnchor constant:10],
                                              [self.baseSignupStackView.trailingAnchor constraintEqualToAnchor:self.signupBackgroundView.trailingAnchor constant:-10],
                                              [self.baseSignupStackView.bottomAnchor constraintEqualToAnchor:self.signupBackgroundView.safeAreaLayoutGuide.bottomAnchor constant:-10],
                                              [self.signUpButton.heightAnchor constraintEqualToConstant:50]
                                              ]];
    self.contentView = [self addView];
    [self.scrollView addSubview:self.contentView];
    [NSLayoutConstraint activateConstraints:@[
            [self.contentView.topAnchor constraintEqualToAnchor:self.scrollView.topAnchor constant:0],
            [self.contentView.leadingAnchor constraintEqualToAnchor:self.scrollView.leadingAnchor constant:0],
            [self.contentView.trailingAnchor constraintEqualToAnchor:self.scrollView.trailingAnchor constant:0],
            [self.contentView.bottomAnchor constraintEqualToAnchor:self.scrollView.bottomAnchor constant:0],
            [self.contentView.widthAnchor constraintEqualToAnchor:self.baseSignupStackView.widthAnchor constant:0]
                                              ]];
    NSLayoutConstraint *heightAnchor = [self.contentView.heightAnchor constraintEqualToAnchor:self.baseSignupStackView.heightAnchor constant:0];
    heightAnchor.priority = UILayoutPriorityDefaultLow;
    heightAnchor.active = YES;
    
    self.signupProfileimageview = [self addimageView];
    self.signupProfileimageview.image = [UIImage imageNamed:@"add_photo"];
    [self.contentView addSubview:self.signupProfileimageview];
    [NSLayoutConstraint activateConstraints:@[
                [self.signupProfileimageview.topAnchor constraintEqualToAnchor:self.contentView.topAnchor constant:10],
                [self.signupProfileimageview.centerXAnchor constraintEqualToAnchor:self.contentView.centerXAnchor constant:0],
                [self.signupProfileimageview.widthAnchor constraintEqualToConstant:100],
                [self.signupProfileimageview.heightAnchor constraintEqualToConstant:100]
                                              ]];
    
    self.signupBackgroundStackView = [self addView];
    self.signupBackgroundStackView.backgroundColor = [UIColor colorWithRed:119/255.0f green:119/255.0f blue:119/255.0f alpha:0.6f];
    self.signupBackgroundStackView.layer.cornerRadius = 5;
    [self.contentView addSubview:self.signupBackgroundStackView];
    [NSLayoutConstraint activateConstraints:@[
                    [self.signupBackgroundStackView.topAnchor constraintEqualToAnchor:self.signupProfileimageview.bottomAnchor constant:20],
                    [self.signupBackgroundStackView.leadingAnchor constraintEqualToAnchor:self.contentView.leadingAnchor constant:10],
                    [self.signupBackgroundStackView.trailingAnchor constraintEqualToAnchor:self.contentView.trailingAnchor constant:-10],
                    [self.signupBackgroundStackView.heightAnchor constraintEqualToConstant:254]
                    ]];
    
    CGFloat a = 20;
    self.nameTextField = [self addTextField:@"Name"];
    [self.nameTextField setPaddingWithSpace:&a withImage:@"signup_name_icon"];
    self.usernameTextField = [self addTextField:@"Username"];
    [self.usernameTextField setPaddingWithSpace:&a withImage:@"signup_username_icon"];
    self.passwordTextField = [self addTextField:@"Password"];
    [self.passwordTextField setSecureTextEntry:YES];
    [self.passwordTextField setPaddingWithSpace:&a withImage:@"signup_password_icon"];
    self.phoneNumberTextField = [self addTextField:@"Number"];
    [self.phoneNumberTextField setPaddingWithSpace:&a withImage:@"signup_phone_icon"];
    self.emailTextField = [self addTextField:@"Email"];
    [self.emailTextField setPaddingWithSpace:&a withImage:@"signup_email_icon"];
    self.nameBorder = [self borderView];
    self.usernameBorder = [self borderView];
    self.passwordBorder = [self borderView];
    self.phoneNumberBorder = [self borderView];
    
    self.signupStackView = [self addStackView:[[NSArray alloc] initWithObjects:self.nameTextField,self.nameBorder,self.usernameTextField,self.usernameBorder,self.passwordTextField,self.passwordBorder,self.phoneNumberTextField,self.phoneNumberBorder,self.emailTextField, nil]];
    self.signupStackView.axis = UILayoutConstraintAxisVertical;
    [self.signupBackgroundStackView addSubview:self.signupStackView];
    [NSLayoutConstraint activateConstraints:@[
                    [self.signupStackView.topAnchor constraintEqualToAnchor:self.signupBackgroundStackView.topAnchor constant:0],
                    [self.signupStackView.leadingAnchor constraintEqualToAnchor:self.signupBackgroundStackView.leadingAnchor constant:0],
                    [self.signupStackView.trailingAnchor constraintEqualToAnchor:self.signupBackgroundStackView.trailingAnchor constant:0],
                    [self.signupStackView.bottomAnchor constraintEqualToAnchor:self.signupBackgroundStackView.bottomAnchor constant:0]
                    ]];
    
    [NSLayoutConstraint activateConstraints:@[
            [self.nameTextField.heightAnchor constraintEqualToConstant:50],
            [self.nameBorder.heightAnchor constraintEqualToConstant:1],
            [self.usernameTextField.heightAnchor constraintEqualToConstant:50],
            [self.usernameBorder.heightAnchor constraintEqualToConstant:1],
            [self.passwordTextField.heightAnchor constraintEqualToConstant:50],
            [self.passwordBorder.heightAnchor constraintEqualToConstant:1],
            [self.phoneNumberTextField.heightAnchor constraintEqualToConstant:50],
            [self.phoneNumberBorder.heightAnchor constraintEqualToConstant:1],
            [self.emailTextField.heightAnchor constraintEqualToConstant:50]
                                              ]];
    
}

//MARK: - Login And Signup Selectors -

-(void)loginSegmentAction{
    //Hiding signup and showing Login
    [self.signupBackgroundView setHidden:YES];
    [self.loginBackgroundView setHidden:NO];
    
    //Customizing segment background and title color
    [self.loginSegmentButton setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
    self.loginSegmentButton.backgroundColor = [UIColor colorWithRed:119/255.0f green:119/255.0f blue:119/255.0f alpha:0.6f];
    [self.signUpSegmentButton setTitleColor:[UIColor colorWithRed:119/255.0F green:119/255.0f blue:119/255.0f alpha:0.6f] forState:UIControlStateNormal];
    self.signUpSegmentButton.backgroundColor = UIColor.clearColor;
}

-(void)signUpSegmentAction{
    //Hiding Login and Showing Signup
    [self.loginBackgroundView setHidden:YES];
    [self.signupBackgroundView setHidden:NO];
    
    //Customizing segment background and title color
    [self.signUpSegmentButton setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
    self.signUpSegmentButton.backgroundColor = [UIColor colorWithRed:119/255.0f green:119/255.0f blue:119/255.0f alpha:0.6f];
    [self.loginSegmentButton setTitleColor:[UIColor colorWithRed:119/255.0F green:119/255.0f blue:119/255.0f alpha:0.6f] forState:UIControlStateNormal];
    self.loginSegmentButton.backgroundColor = UIColor.clearColor;
}
@end
