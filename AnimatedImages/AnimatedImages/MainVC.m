//
//  ViewController.m
//  AnimatedImages
//
//  Created by 3 Embed on 09/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import "MainVC.h"

@interface MainVC ()

@end

@implementation MainVC

- (void)loadView {
    [super loadView];
    [self addSubviews];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.isFlipped = NO;
    // Do any additional setup after loading the view, typically from a nib.
}
// MARK: - ImageView -
- (UIImageView *)addimageView {
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    imageView.translatesAutoresizingMaskIntoConstraints = NO;
    imageView.backgroundColor = UIColor.grayColor;
    [imageView setImage:[UIImage imageNamed:@"Back"]];
    imageView.layer.cornerRadius = 10;
    imageView.clipsToBounds = YES;
    return imageView;
}

// MARK: - Fliped View -

-(UIView *)addView {
    UIView *view = [[UIView alloc] init];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    view.layer.shadowColor = UIColor.grayColor.CGColor;
    view.layer.shadowOpacity = 1;
    view.layer.shadowOffset = CGSizeZero;
    view.layer.shadowRadius = 10;
    view.layer.cornerRadius = 10;
    view.backgroundColor = UIColor.orangeColor;
    view.hidden = YES;
//    view.clipsToBounds = YES;
    return view;
}

// MARK: - Buttons -
- (UIButton *)startButton {
    UIButton *startButton = [[UIButton alloc] init];
    [startButton setTitle:@"Flip Animation" forState:UIControlStateNormal];
    startButton.titleLabel.font = [UIFont fontWithName:@"AvenirNext-Medium" size:18];
    [startButton setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
    startButton.backgroundColor = [[UIColor alloc] initWithDisplayP3Red:0/255 green:165/255 blue:255/255 alpha:1];
    startButton.layer.cornerRadius = 10;
    startButton.layer.borderColor = [[UIColor alloc] initWithDisplayP3Red:0/255 green:165/255 blue:255/255 alpha:1].CGColor;
    startButton.layer.borderWidth = 2;
    [startButton addTarget:self action:@selector(flip) forControlEvents:UIControlEventTouchUpInside];
    startButton.translatesAutoresizingMaskIntoConstraints = NO;
    return startButton;
}

-(UILabel *) addLabel {
    UILabel *label = [[UILabel alloc] init];
    label.textColor = UIColor.whiteColor;
    label.textAlignment = NSTextAlignmentLeft;
    label.adjustsFontSizeToFitWidth = YES;
    return label;
}

- (UIButton *)stopButton {
    UIButton *stopButton = [[UIButton alloc] init];
    [stopButton setTitle:@"Flip Animation" forState:UIControlStateNormal];
    stopButton.titleLabel.font = [UIFont fontWithName:@"AvenirNext-Medium" size:18];
    [stopButton setTitleColor:[[UIColor alloc] initWithDisplayP3Red:0/255 green:165/255 blue:255/255 alpha:1] forState:UIControlStateNormal];
    stopButton.backgroundColor = UIColor.whiteColor;
    stopButton.layer.cornerRadius = 10;
    stopButton.layer.borderColor = [[UIColor alloc] initWithDisplayP3Red:0/255 green:165/255 blue:255/255 alpha:1].CGColor;
    stopButton.layer.borderWidth = 2;
    [stopButton addTarget:self action:@selector(flip) forControlEvents:UIControlEventTouchUpInside];
    stopButton.translatesAutoresizingMaskIntoConstraints = NO;
    return stopButton;
}


- (void)addSubviews {
    self.view.backgroundColor = UIColor.whiteColor;
    self.flipedView = [self addView];
    [self.view addSubview:self.flipedView];
    [NSLayoutConstraint activateConstraints:@[
                                              [self.flipedView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:20],
                                              [self.flipedView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:20],
                                              [self.flipedView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-20],
                                              [self.flipedView.heightAnchor constraintEqualToAnchor:self.view.heightAnchor multiplier:0.5]
                                              ]];
    
    self.headerLabel = [self addLabel];
    self.headerLabel.text = @"Flipped View";
    self.headerLabel.font = [UIFont fontWithName:@"AvenirNext-Heavy" size:20];
    
    self.titleLabel = [self addLabel];
    self.titleLabel.text = @"Click again To Flip Back";
    self.titleLabel.font = [UIFont fontWithName:@"AvenirNext-Medium" size:20];
    
    
    self.labelStackView = [self addStackView:[[NSArray alloc] initWithObjects:self.headerLabel,self.titleLabel, nil]];
    
    self.labelStackView.axis = UILayoutConstraintAxisVertical;
    
    [self.flipedView addSubview:self.labelStackView];
    
    [NSLayoutConstraint activateConstraints:@[
                                              [self.labelStackView.centerXAnchor constraintEqualToAnchor:self.flipedView.centerXAnchor],
                                              [self.labelStackView.centerYAnchor constraintEqualToAnchor:self.flipedView.centerYAnchor],
                                              [self.labelStackView.heightAnchor constraintEqualToAnchor:self.flipedView.heightAnchor multiplier:0.3],
                                              [self.labelStackView.widthAnchor constraintEqualToAnchor:self.flipedView.widthAnchor constant:-40]
                                              ]];
    
    self.imageView = [self addimageView];
    [self.view addSubview:self.imageView];
    
    
    [NSLayoutConstraint activateConstraints:@[
                                              [self.imageView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:20],
                                              [self.imageView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:20],
                                              [self.imageView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-20],
                                              [self.imageView.heightAnchor constraintEqualToAnchor:self.view.heightAnchor multiplier:0.5]
                                              ]];
    
//    [self.view addSubview:self.startButton];
//    [self.view addSubview:self.stopButton];
    NSArray *subViews = [[NSArray alloc] initWithObjects:self.startButton,self.stopButton, nil];
    self.stackView = [self addStackView:subViews];
    self.stackView.axis = UILayoutConstraintAxisVertical;
    self.stackView.distribution = UIStackViewDistributionFillEqually;
    self.stackView.spacing = 20;
//    [self addConstraints];
    [self.view addSubview:self.stackView];
    [NSLayoutConstraint activateConstraints:@[
                                              [self.stackView.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor constant:-20],
                                              [self.stackView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:20],
                                              [self.stackView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-20],
                                              [self.stackView.heightAnchor constraintEqualToAnchor:self.view.heightAnchor multiplier:0.2]
                                              ]];
    
}


// MARK: - Selectors -

- (void) flip {
     self.isFlipped ? [self flipLeft] : [self flipRight];
}

-(void) flipRight {
    
    [UIView transitionWithView:self.flipedView duration:0.35 options:UIViewAnimationOptionTransitionFlipFromRight animations:^{
        self.flipedView.hidden = NO;
        self.imageView.hidden = YES;
    } completion:nil];
    self.isFlipped = YES;
}

-(void) flipLeft {
    
    [UIView transitionWithView:self.imageView duration:0.35 options:UIViewAnimationOptionTransitionFlipFromLeft animations:^{
        self.imageView.hidden = NO;
        self.flipedView.hidden = YES;
    } completion:nil];
    self.isFlipped = NO;
    
    
}

// MARK: - StackView -
-(UIStackView *)addStackView:(NSArray *) views{
    UIStackView *stackView = [[UIStackView alloc] initWithArrangedSubviews:views];
    stackView.translatesAutoresizingMaskIntoConstraints = NO;
    return stackView;
}
@end


