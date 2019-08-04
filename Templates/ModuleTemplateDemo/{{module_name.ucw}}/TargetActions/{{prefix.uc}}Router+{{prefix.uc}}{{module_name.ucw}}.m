//
//  {{prefix.uc}}Router+{{prefix.uc}}{{module_name.ucw}}.m
//  {{project_name}}
//
//  Created by {{developer_name}} on 2019/08/04.
//  Copyright © 2019 {{company}}. All rights reserved.
//

#import "{{prefix.uc}}Router+{{prefix.uc}}{{module_name.ucw}}.h"

NSString * const {{prefix.uc}}{{module_name.ucw}}TargetName = @"{{prefix.uc}}{{module_name.ucw}}";

@implementation {{prefix.uc}}Router ({{prefix.uc}}{{module_name.ucw}})

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [self addRouterWithHost:{{prefix.uc}}RouterHost path:@"/object/{{module_name.lcf}}/page" name:@"获取“{{module_cname}}”视图控制器实例" forTarget:{{prefix.uc}}{{module_name.ucw}}TargetName action:@"{{module_name.lcf}}ViewControllerWithParams:" defaults:nil shouldCacheTarget:YES errorBlock:nil];
        
        [self addRouterWithHost:{{prefix.uc}}RouterHost path:@"/view/{{module_name.lcf}}/page" name:@"前往“{{module_cname}}”" forTarget:{{prefix.uc}}{{module_name.ucw}}TargetName action:@"goto{{module_name.ucw}}ViewControllerWithParams:" defaults:nil shouldCacheTarget:YES errorBlock:nil];
    });
    
//    // @ANDY: 路由测试
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [{{prefix.uc}}Router performRouterUrl:@"demo://{{company}}.com/view/{{module_name.lcf}}/page" paramsBlock:nil error:nil];
//    });
}

@end
