//
//  UIView+Anchors.m
//  NavAndTab
//
//  Created by 3 Embed on 14/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import "UIView+Anchors.h"

@implementation UIView (Anchors)

- (void)setTitleCenter:(NSLayoutXAxisAnchor *)centerX centerY:(NSLayoutYAxisAnchor *)centerY width:(CGFloat)width height:(CGFloat)height{
    self.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
                                              [self.centerXAnchor constraintEqualToAnchor:centerX],
                                              [self.centerYAnchor constraintEqualToAnchor:centerY],
                                              [self.widthAnchor constraintEqualToConstant:width],
                                              [self.heightAnchor constraintEqualToConstant:height]
                                              
                                              ]];
}

- (void)setButtonCons:(NSLayoutYAxisAnchor *)bottom centerX:(NSLayoutXAxisAnchor *)centerX width:(CGFloat)width height:(CGFloat)height {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
                                              [self.bottomAnchor constraintEqualToAnchor:bottom constant:-10],
                                              [self.centerXAnchor constraintEqualToAnchor:centerX constant:0],
                                              [self.widthAnchor constraintEqualToConstant:width],
                                              [self.heightAnchor constraintEqualToConstant:height]
                                              ]];
}

@end
