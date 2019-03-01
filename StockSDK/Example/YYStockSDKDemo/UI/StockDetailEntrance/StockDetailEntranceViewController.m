//
//  StockDetailEntranceViewController.m
//  BrokerDemo
//
//  Created by 陈嘉维 on 2019/2/27.
//  Copyright © 2019 yff. All rights reserved.
//

#import "StockDetailEntranceViewController.h"
#import <Masonry/Masonry.h>
#import <YYStockFramework/YYStockFramework.h>

@interface StockDetailEntranceViewController ()
@property (nonatomic, strong) UILabel *descLabel;
//去个股详情入口按钮
@property (nonatomic, strong) UIButton *toStockDetailBtn;

@end

@implementation StockDetailEntranceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Demo";
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.descLabel];
    [self.view addSubview:self.toStockDetailBtn];
    
    
    [self.descLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.view.mas_centerY).offset(-10);
        make.centerX.equalTo(self.view);
    }];

    [self.toStockDetailBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.descLabel.mas_bottom).offset(10);
        make.centerX.equalTo(self.view);
    }];
    
}

#pragma mark - Action
- (void)onToStockDetailClick:(id)sender {
    //TODO 调用SDK
    NSLog(@"onToStockDetailClick");
    //去到腾讯的个股详情页 股票代码: 00700
    [[YYStockSDK sharedInstance] pushToStockDetailsWithStockCode:@"00700"];
}

#pragma mark - getter
- (UILabel *)descLabel {
    if (!_descLabel) {
        _descLabel = [[UILabel alloc] init];
        _descLabel.font = [UIFont systemFontOfSize:16];
        _descLabel.textColor = [UIColor orangeColor];
        _descLabel.textAlignment = NSTextAlignmentCenter;
        _descLabel.text = @"Stock SDK Demo";
    }
    return _descLabel;
}

- (UIButton *)toStockDetailBtn {
    if (!_toStockDetailBtn) {
        _toStockDetailBtn = [[UIButton alloc] init];
        [_toStockDetailBtn setTitle:@"查看股票详情" forState:UIControlStateNormal];
        [_toStockDetailBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_toStockDetailBtn setBackgroundColor:[UIColor blueColor]];
        _toStockDetailBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        [_toStockDetailBtn addTarget:self action:@selector(onToStockDetailClick:) forControlEvents:UIControlEventTouchUpInside];
        _toStockDetailBtn.contentEdgeInsets = UIEdgeInsetsMake(5, 10, 5, 10);
    }
    return _toStockDetailBtn;
}

@end
