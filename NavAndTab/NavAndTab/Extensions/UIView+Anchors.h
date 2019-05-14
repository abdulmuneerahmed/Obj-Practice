//
//  UIView+Anchors.h
//  NavAndTab
//
//  Created by 3 Embed on 14/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Anchors)
-(void) setTitleCenter :(NSLayoutXAxisAnchor *)centerX centerY:(NSLayoutYAxisAnchor *)centerY width:(CGFloat)width height:(CGFloat)height;

-(void) setButtonCons :(NSLayoutYAxisAnchor *)bottom centerX:(NSLayoutXAxisAnchor *)centerX width:(CGFloat)width height:(CGFloat)height;

@end

NS_ASSUME_NONNULL_END
