//
//  YYStockDelegate.h
//  BrokerDemo
//
//  Created by 陈嘉维 on 2019/2/27.
//  Copyright © 2019 yff. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <YYStockFramework/YYStockFramework.h>

NS_ASSUME_NONNULL_BEGIN

@interface YYStockDelegate : NSObject<YYStockSDKDelegate, YYStockSDKDataSource>

@end

NS_ASSUME_NONNULL_END
