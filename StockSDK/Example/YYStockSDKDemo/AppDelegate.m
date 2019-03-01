//
//  AppDelegate.m
//  BrokerDemo
//
//  Created by 陈嘉维 on 2019/2/27.
//  Copyright © 2019 yff. All rights reserved.
//

#import "AppDelegate.h"
#import "StockDetailEntranceViewController.h"
#import <YYStockFramework/YYStockFramework.h>
#import "YYStockDelegate.h"

@interface AppDelegate ()
@property (nonatomic, strong) YYStockDelegate *stockDelegate;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // 初始化SDK
    [self prepareYYStockSDK];
    
    UIWindow *window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    StockDetailEntranceViewController *vc = [[StockDetailEntranceViewController alloc] init];
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:vc];
    
    window.rootViewController = navi;
    
    self.window = window;
    [self.window makeKeyAndVisible];
    // Override point for customization after application launch.
    return YES;
}


- (void)prepareYYStockSDK {
    
    YYStockSDKConfig *config = [[YYStockSDKConfig alloc] init];
    config.appID = @"Your appID";
    config.token = @"Your token";
    
#if DEBUG
    config.isProduction = NO;
#else
    config.isProduction = YES;
#endif
    self.stockDelegate = [[YYStockDelegate alloc] init];
    [[YYStockSDK sharedInstance] startWithConfigure:config];
    [YYStockSDK sharedInstance].SDKDelegate = self.stockDelegate;
    [YYStockSDK sharedInstance].SDKDataSource = self.stockDelegate;
    
    
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
