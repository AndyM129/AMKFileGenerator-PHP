//
//  AMKTarget_AMKSearch.m
//  Demo
//
//  Created by Andy Meng on 2019/08/04.
//  Copyright © 2019 andy_m129. All rights reserved.
//

#import "AMKTarget_AMKSearch.h"
#import "AMKSearchViewController.h"
#import <AMKCategories/UIViewController+AMKNavigationControllerWithCallback.h>

@interface AMKTarget_AMKSearch ()
@property(nonatomic, strong, nullable) AMKSearchViewController *searchViewController;
@end

@implementation AMKTarget_AMKSearch

#pragma mark - Init Methods

- (void)dealloc {
    
}

- (instancetype)init {
    if (self = [super init]) {
        
    }
    return self;
}

#pragma mark - Properties

- (AMKSearchViewController *)searchViewController {
    if (!_searchViewController) {
        _searchViewController = [[AMKSearchViewController alloc] init];
        [_searchViewController view];
    }
    return _searchViewController;
}

#pragma mark - Public Methods

- (UIViewController *_Nullable)Action_searchViewControllerWithParams:(NSDictionary *)params {
    return self.searchViewController;
}

- (void)Action_gotoSearchViewControllerWithParams:(NSDictionary *)params {
    self.searchViewController.amk_presentedWithNavigationController = YES;
    [UIViewController amk_gotoViewController:self.searchViewController transitionStyle:AMKViewControllerTransitionStylePush animated:YES completion:nil];
}

#pragma mark - Private Methods

#pragma mark - Notifications

#pragma mark - KVO

#pragma mark - Delegate

#pragma mark - Override

#pragma mark - Networking

#pragma mark - Helper Methods

@end
