//
//

//  UIViewControllerTransition
//
//  Created by taitanxiami on 15/12/14.
//  Copyright © 2015年 taitanxiami. All rights reserved.
//

#import "RotationAniamtionTransition.h"

@implementation RotationAniamtionTransition
//返回动画的时间
- (NSTimeInterval)transitionDuration:(id <UIViewControllerContextTransitioning>)transitionContext {
    
    return 0.5f;
}

//在进行切换的时候将调用该方法，我们对于切换时的UIView的设置和动画都在这个方法中完成。
- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext {
    
    //动画推出的ViewController
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    CGRect finalRect = [transitionContext finalFrameForViewController:toVC];
//    toVC.view.frame = CGRectOffset(finalRect, 0, [UIScreen mainScreen].bounds.size.height);
    toVC.view.transform = CGAffineTransformMakeScale(0, 0);
    [[transitionContext containerView] addSubview:toVC.view];
    
//    [UIView animateWithDuration:0.5f delay:0 usingSpringWithDamping:0.6 initialSpringVelocity:0 options:UIViewAnimationOptionCurveLinear animations:^{
//        
//        toVC.view.frame = finalRect;
//    } completion:^(BOOL finished) {
//        [transitionContext completeTransition:YES];
//    }];
    
    [UIView animateWithDuration:0.5f animations:^{
       
//        toVC.view.frame = finalRect;
        toVC.view.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished) {
        [transitionContext completeTransition:YES];
    }];
}
@end
