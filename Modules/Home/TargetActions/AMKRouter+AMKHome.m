//
//  AMKRouter+AMKHome.m
//  Demo
//
//  Created by Andy Meng on 2019/08/04.
//  Copyright © 2019 andy_m129. All rights reserved.
//

#import "AMKRouter+AMKHome.h"

NSString * const AMKHomeTargetName = @"AMKHome";

@implementation AMKRouter (AMKHome)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [self addRouterWithHost:AMKRouterHost path:@"/object/home/page" name:@"获取“首页”视图控制器实例" forTarget:AMKHomeTargetName action:@"homeViewControllerWithParams:" defaults:nil shouldCacheTarget:YES errorBlock:nil];
        
        [self addRouterWithHost:AMKRouterHost path:@"/view/home/page" name:@"前往“首页”" forTarget:AMKHomeTargetName action:@"gotoHomeViewControllerWithParams:" defaults:nil shouldCacheTarget:YES errorBlock:nil];
    });
    
//    // @ANDY: 路由测试
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [AMKRouter performRouterUrl:@"demo://andy_m129.com/view/home/page" paramsBlock:nil error:nil];
//    });
}

@end
