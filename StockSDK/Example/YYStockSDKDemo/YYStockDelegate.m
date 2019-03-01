//
//  YYStockDelegate.m
//  BrokerDemo
//
//  Created by 陈嘉维 on 2019/2/27.
//  Copyright © 2019 yff. All rights reserved.
//

#import "YYStockDelegate.h"

@implementation YYStockDelegate

- (UIWindow *)stockSDKMainWindow {
    return [UIApplication sharedApplication].keyWindow;
}

- (UINavigationController *)stockSDKCurrentNavigationController {
    
    UIWindow *window = self.rootWindow;
    
    if ([window.rootViewController isKindOfClass:[UINavigationController class]]) {
        return (UINavigationController *)window.rootViewController;
    } else {
        return nil;
    }
    
    return nil;
}


- (UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window {
    return UIInterfaceOrientationMaskAll;
}

- (void)YYStockSDKLegality:(YYStockSDK *)yyStockSDK success:(NSDictionary *)success error:(NSError *)error {
    
    if (success != nil) {
        NSLog(@"YYStockSDKLegality success, param: %@", success);
    } else {
        NSLog(@"YYStockSDKLegality failed, error: %@", error);
    }
    
}

- (UIWindow *)rootWindow {
    return [UIApplication sharedApplication].keyWindow;
}



@end
