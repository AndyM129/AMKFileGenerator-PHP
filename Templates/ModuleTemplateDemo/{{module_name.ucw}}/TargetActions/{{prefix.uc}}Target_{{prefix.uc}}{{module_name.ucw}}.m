//
//  {{prefix.uc}}Target_{{prefix.uc}}{{module_name.ucw}}.m
//  {{project_name}}
//
//  Created by {{developer_name}} on 2019/08/04.
//  Copyright © 2019 {{company}}. All rights reserved.
//

#import "{{prefix.uc}}Target_{{prefix.uc}}{{module_name.ucw}}.h"
#import "{{prefix.uc}}{{module_name.ucw}}ViewController.h"
#import <{{prefix.uc}}Categories/UIViewController+{{prefix.uc}}NavigationControllerWithCallback.h>

@interface {{prefix.uc}}Target_{{prefix.uc}}{{module_name.ucw}} ()
@property(nonatomic, strong, nullable) {{prefix.uc}}{{module_name.ucw}}ViewController *{{module_name.lcf}}ViewController;
@end

@implementation {{prefix.uc}}Target_{{prefix.uc}}{{module_name.ucw}}

#pragma mark - Init Methods

- (void)dealloc {
    
}

- (instancetype)init {
    if (self = [super init]) {
        
    }
    return self;
}

#pragma mark - Properties

- ({{prefix.uc}}{{module_name.ucw}}ViewController *){{module_name.lcf}}ViewController {
    if (!_{{module_name.lcf}}ViewController) {
        _{{module_name.lcf}}ViewController = [[{{prefix.uc}}{{module_name.ucw}}ViewController alloc] init];
        [_{{module_name.lcf}}ViewController view];
    }
    return _{{module_name.lcf}}ViewController;
}

#pragma mark - Public Methods

- (UIViewController *_Nullable)Action_{{module_name.lcf}}ViewControllerWithParams:(NSDictionary *)params {
    return self.{{module_name.lcf}}ViewController;
}

- (void)Action_goto{{module_name.ucw}}ViewControllerWithParams:(NSDictionary *)params {
    self.{{module_name.lcf}}ViewController.{{prefix.lc}}_presentedWithNavigationController = YES;
    [UIViewController {{prefix.lc}}_gotoViewController:self.{{module_name.lcf}}ViewController transitionStyle:{{prefix.uc}}ViewControllerTransitionStylePush animated:YES completion:nil];
}

#pragma mark - Private Methods

#pragma mark - Notifications

#pragma mark - KVO

#pragma mark - Delegate

#pragma mark - Override

#pragma mark - Networking

#pragma mark - Helper Methods

@end
