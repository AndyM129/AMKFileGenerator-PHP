//
//  AMKTarget_AMKHome.m
//  Demo
//
//  Created by Andy Meng on 2019/08/04.
//  Copyright © 2019 andy_m129. All rights reserved.
//

#import "AMKTarget_AMKHome.h"
#import "AMKHomeViewController.h"
#import <AMKCategories/UIViewController+AMKNavigationControllerWithCallback.h>

@interface AMKTarget_AMKHome ()
@property(nonatomic, strong, nullable) AMKHomeViewController *homeViewController;
@end

@implementation AMKTarget_AMKHome

#pragma mark - Init Methods

- (void)dealloc {
    
}

- (instancetype)init {
    if (self = [super init]) {
        
    }
    return self;
}

#pragma mark - Properties

- (AMKHomeViewController *)homeViewController {
    if (!_homeViewController) {
        _homeViewController = [[AMKHomeViewController alloc] init];
        [_homeViewController view];
    }
    return _homeViewController;
}

#pragma mark - Public Methods

- (UIViewController *_Nullable)Action_homeViewControllerWithParams:(NSDictionary *)params {
    return self.homeViewController;
}

- (void)Action_gotoHomeViewControllerWithParams:(NSDictionary *)params {
    self.homeViewController.amk_presentedWithNavigationController = YES;
    [UIViewController amk_gotoViewController:self.homeViewController transitionStyle:AMKViewControllerTransitionStylePush animated:YES completion:nil];
}

#pragma mark - Private Methods

#pragma mark - Notifications

#pragma mark - KVO

#pragma mark - Delegate

#pragma mark - Override

#pragma mark - Networking

#pragma mark - Helper Methods

@end
