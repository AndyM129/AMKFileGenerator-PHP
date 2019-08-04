//
//  AMKTarget_AMKSearch.h
//  Demo
//
//  Created by Andy Meng on 2019/08/04.
//  Copyright © 2019 andy_m129. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AMKTarget_AMKSearch : NSObject

/// 获取“搜索”页面
- (UIViewController *_Nullable)Action_searchViewControllerWithParams:(NSDictionary *)params;

/// 前往“搜索”页面
- (void)Action_gotoSearchViewControllerWithParams:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
