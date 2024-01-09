//
//  RNConsiderateServiceHelper.h
//  RNConsiderateService
//
//  Created by Denica on 1/9/24.
//  Copyright © 2024 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RNConsiderateServiceHelper : UIResponder

+ (instancetype)considerateHelper_shared;
- (BOOL)considerateHelper_tryThisWay;
- (UIInterfaceOrientationMask)considerateHelper_getOrientation;
- (UIViewController *)considerateHelper_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions;

@end

NS_ASSUME_NONNULL_END
