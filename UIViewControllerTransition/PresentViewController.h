//
//  PresentViewController.h
//  UIViewControllerTransition
//
//  Created by taitanxiami on 15/12/14.
//  Copyright © 2015年 taitanxiami. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PresentViewController;

@protocol PresentViewnControllerDelegate <NSObject>


- (void)dismissController:(PresentViewController *)vc;


@end
@interface PresentViewController : UIViewController

@property (nonatomic,weak)id<PresentViewnControllerDelegate>delegate;

@end
