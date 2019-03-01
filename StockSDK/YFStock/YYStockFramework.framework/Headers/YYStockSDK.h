//
//  SDKManager.h
//  DemoFramework
//
//  Created by yinlong on 2018/12/27.
//  Copyright © 2018 张银龙. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class YYStockSDK;
@protocol YYStockSDKDelegate <NSObject>

- (UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window;

- (void)YYStockSDKLegality:(YYStockSDK *)yyStockSDK success:(NSDictionary *)success error:(NSError *)error;

@end


@protocol YYStockSDKDataSource <NSObject>

- (UIWindow *)stockSDKMainWindow;

- (UINavigationController *)stockSDKCurrentNavigationController;

@end


@interface YYStockSDKConfig: NSObject

@property (nonatomic, copy, nonnull) NSString *token;

@property (nonatomic, copy, nonnull) NSString *appID;
/** 开发环境 */
@property (nonatomic, assign) BOOL isProduction;

@end

@interface YYStockSDK: NSObject

@property (nonatomic, weak) id<YYStockSDKDelegate> SDKDelegate;
@property (nonatomic, weak) id<YYStockSDKDataSource> SDKDataSource;
/** 宿主 APP 非法 */
@property (nonatomic, assign) BOOL invalid;

@property (nonatomic, assign) UIInterfaceOrientationMask interfaceMask;


+ (instancetype)sharedInstance;

- (NSString *)currentSDKVersion;

- (void)startWithConfigure:(YYStockSDKConfig *)configure;

- (void)pushToStockDetailsWithStockCode:(NSString *)stockCode;

- (void)pushToForeignExVC;

- (BOOL)canOpenURL:(NSURL *)url;
- (void)openURL:(NSURL *)url;

- (UIViewController *)topViewController;

- (UIWindow *)mainWindow;

- (UINavigationController *)navigationController;



@end

NS_ASSUME_NONNULL_END
