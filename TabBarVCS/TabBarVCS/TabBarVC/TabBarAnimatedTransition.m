//
//  TabBarAnimatedTransition.m
//  TabBarVCS
//
//  Created by 3 Embed on 15/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import "TabBarAnimatedTransition.h"

@implementation TabBarAnimatedTransition

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    return 0.3;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {
    UIView *destination = [transitionContext viewForKey:UITransitionContextToViewKey];
    destination.alpha = 0;
    destination.transform = CGAffineTransformMakeScale(1.15, 1.15);
    [transitionContext.containerView addSubview:destination];
    
//    [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
//        destination.alpha = 1.0;
//        destination.transform = CGAffineTransformIdentity;
//    }];
    
    [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
        destination.alpha = 1.0;
        destination.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished) {
        [transitionContext completeTransition:finished];
    }];
}

@end
