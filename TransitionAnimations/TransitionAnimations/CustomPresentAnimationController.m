//
//  CustomPresentAnimationController.m
//  TransitionAnimations
//
//  Created by 3 Embed on 11/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomPresentAnimationController.h"

@implementation CustomPresentAnimationController 

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    return 2.5;
}
- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {
    UIViewController * fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    CGRect finalVC = [transitionContext finalFrameForViewController:toVC];
    UIView *containerView = [transitionContext containerView];
    CGRect bounds = UIScreen.mainScreen.bounds;
    toVC.view.frame = CGRectOffset(finalVC, 0, - bounds.size.height);
    [containerView addSubview:toVC.view];
    
    [UIView animateWithDuration:2.5 delay:0.0 usingSpringWithDamping:0.55 initialSpringVelocity:0.2 options:UIViewAnimationOptionCurveLinear animations:^{
        fromVC.view.alpha = 0.5;
        toVC.view.frame = finalVC;
    } completion:^(BOOL finished) {
        [transitionContext completeTransition:YES];
        fromVC.view.alpha = 1.0;
    }];
}
@end
