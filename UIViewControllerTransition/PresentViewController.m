//
//  PresentViewController.m
//  UIViewControllerTransition
//
//  Created by taitanxiami on 15/12/14.
//  Copyright © 2015年 taitanxiami. All rights reserved.
//

#import "PresentViewController.h"

@implementation PresentViewController

- (IBAction)dismissvc:(id)sender {
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(dismissController:)]) {
        [self.delegate dismissController:self];
    }
}

@end
