//
//  {{prefix.uc}}Target_{{prefix.uc}}{{module_name.ucw}}.h
//  {{project_name}}
//
//  Created by {{developer_name}} on 2019/08/04.
//  Copyright © 2019 {{company}}. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface {{prefix.uc}}Target_{{prefix.uc}}{{module_name.ucw}} : NSObject

/// 获取“{{module_cname}}”页面
- (UIViewController *_Nullable)Action_{{module_name.lcf}}ViewControllerWithParams:(NSDictionary *)params;

/// 前往“{{module_cname}}”页面
- (void)Action_goto{{module_name.ucw}}ViewControllerWithParams:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
