//
//  AMKTarget_AMKHome.h
//  Demo
//
//  Created by Andy Meng on 2019/08/04.
//  Copyright © 2019 andy_m129. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AMKTarget_AMKHome : NSObject

/// 获取“首页”页面
- (UIViewController *_Nullable)Action_homeViewControllerWithParams:(NSDictionary *)params;

/// 前往“首页”页面
- (void)Action_gotoHomeViewControllerWithParams:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
