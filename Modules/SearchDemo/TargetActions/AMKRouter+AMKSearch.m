//
//  AMKRouter+AMKSearch.m
//  Demo
//
//  Created by Andy Meng on 2019/08/04.
//  Copyright © 2019 andy_m129. All rights reserved.
//

#import "AMKRouter+AMKSearch.h"

NSString * const AMKSearchTargetName = @"AMKSearch";

@implementation AMKRouter (AMKSearch)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [self addRouterWithHost:AMKRouterHost path:@"/object/search/page" name:@"获取“搜索”视图控制器实例" forTarget:AMKSearchTargetName action:@"searchViewControllerWithParams:" defaults:nil shouldCacheTarget:YES errorBlock:nil];
        
        [self addRouterWithHost:AMKRouterHost path:@"/view/search/page" name:@"前往“搜索”" forTarget:AMKSearchTargetName action:@"gotoSearchViewControllerWithParams:" defaults:nil shouldCacheTarget:YES errorBlock:nil];
    });
    
//    // @ANDY: 路由测试
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [AMKRouter performRouterUrl:@"demo://andy_m129.com/view/search/page" paramsBlock:nil error:nil];
//    });
}

@end
