//
//  AMKHomeViewController.m
//  Demo
//
//  Created by Andy Meng on 2019/08/04.
//  Copyright © 2019 andy_m129. All rights reserved.
//

#import "AMKHomeViewController.h"
#import <Demo/AMKRouter.h>

@interface AMKHomeViewController ()

@end

@implementation AMKHomeViewController

#pragma mark - Life Circle

- (void)dealloc {
    
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        self.title = @"首页";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self test];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

#pragma mark - Properties

#pragma mark - Data & Networking

#pragma mark - Layout Subviews

#pragma mark - Public Methods

#pragma mark - Private Methods

#pragma mark - Notifications

#pragma mark - KVO

#pragma mark - Delegate

#pragma mark - Override

#pragma mark - Helper Methods

- (void)test {
    NSMutableArray<NSString *> *titles = @[].mutableCopy;
    NSMutableArray<NSString *> *routerUrls = @[].mutableCopy;
    
    [titles addObject:@"推荐"];
    [routerUrls addObject:[AMKRouter routerUrlWithPath:@"/view/recommend/page" params:nil]];

    [titles addObject:@"关注"];
    [routerUrls addObject:[AMKRouter routerUrlWithPath:@"/view/follow/page" params:nil]];
    
    [titles addObject:@"战队"];
    [routerUrls addObject:[AMKRouter routerUrlWithPath:@"/view/team/page" params:nil]];
    
    [routerUrls enumerateObjectsUsingBlock:^(NSString * _Nonnull routerUrl, NSUInteger idx, BOOL * _Nonnull stop) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.titleLabel.font = [UIFont systemFontOfSize:14];
        button.tintColor = [UIColor colorWithRed:0.98 green:0.87 blue:0.29 alpha:1.00];
        [button setTitle:titles[idx] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor colorWithRed:0.34 green:0.32 blue:0.19 alpha:1.00] forState:UIControlStateNormal];
        [button setBackgroundImage:[UIImage imageWithColor:button.tintColor] forState:UIControlStateNormal];
        [button addBlockForControlEvents:UIControlEventTouchUpInside block:^(id  _Nonnull sender) {
            [AMKRouter performRouterUrl:routerUrl params:nil error:nil];
        }];
        [self.view addSubview:button];
        [button mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(self.view).offset(-30);
            make.centerX.mas_equalTo(self.view);
            make.bottom.mas_equalTo(self.view.mas_bottom).offset((NSInteger)idx * -50 - 20);
            make.height.mas_equalTo(40);
        }];
    }];
    
}
@end
