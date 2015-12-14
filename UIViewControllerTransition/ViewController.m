//
//  ViewController.m
//  UIViewControllerTransition
//
//  Created by taitanxiami on 15/12/14.
//  Copyright © 2015年 taitanxiami. All rights reserved.
//

#import "ViewController.h"
#import "PresentViewController.h"
#import "RotationAniamtionTransition.h"
@interface ViewController ()<PresentViewnControllerDelegate,UIViewControllerTransitioningDelegate>

@property (nonatomic,strong) RotationAniamtionTransition *presentAnimation;
\
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        
        self.presentAnimation = [[RotationAniamtionTransition alloc]init];
    }
    
    return self;
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    PresentViewController *presentVC = segue.destinationViewController;
    presentVC.delegate = self;
    presentVC.transitioningDelegate = self;
}

#pragma mark - UIViewControllerTransitionDelegate
- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    
    return self.presentAnimation;
}

- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    
    return nil;
}

- (nullable id <UIViewControllerInteractiveTransitioning>)interactionControllerForPresentation:(id <UIViewControllerAnimatedTransitioning>)animator {
    return nil;

}

- (nullable id <UIViewControllerInteractiveTransitioning>)interactionControllerForDismissal:(id <UIViewControllerAnimatedTransitioning>)animator{
    return nil;

}

- (nullable UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented presentingViewController:(UIViewController *)presenting sourceViewController:(UIViewController *)source {
    return nil;

}

#pragma mark - PresentViewController delegate
-(void)dismissController:(PresentViewController *)vc {
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
