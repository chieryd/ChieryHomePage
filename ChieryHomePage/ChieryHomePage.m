//
//  ChieryHomePage.m
//  ChieryHomePage
//
//  Created by chiery on 2018/1/5.
//  Copyright © 2018年 com.chiery.com. All rights reserved.
//

#import "ChieryHomePage.h"
#import "ChieryCommonKit.h"
#import "ChieryJumpHandle.h"

@interface ChieryHomePage ()
@property (nonatomic, strong) UIButton *business1Button;
@property (nonatomic, strong) UIButton *business2Button;
@end

@implementation ChieryHomePage

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addSubviews];
    [self layoutSubviews];
}

- (void)addSubviews {
    [self.view addSubview:self.business1Button];
    [self.view addSubview:self.business2Button];
}

- (void)layoutSubviews {
    // 这里开始布局
    [self.business1Button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.with.height.equalTo(@100);
    }];
    [self.business2Button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.with.height.equalTo(@100);
        make.left.equalTo(self.business1Button.mas_right).offset(20);
    }];}

- (void)business1Action {
    [ChieryJumpHandle jumpHandleOpenURL:[NSURL URLWithString:@"chieryiphone://business1?q=1"]];
}

- (void)business2Action {
    [ChieryJumpHandle jumpHandleOpenURL:[NSURL URLWithString:@"chieryiphone://business2?q=2"]];
}

- (UIButton *)business1Button {
    if (!_business1Button) {
        _business1Button = [UIButton new];
        _business1Button.backgroundColor = [UIColor redColor];
        [_business1Button setTitle:@"business1" forState:UIControlStateNormal];
        [_business1Button addTarget:self action:@selector(business1Action) forControlEvents:UIControlEventTouchUpInside];
    }
    return _business1Button;
}

- (UIButton *)business2Button {
    if (!_business2Button) {
        _business2Button = [UIButton new];
        _business2Button.backgroundColor = [UIColor blueColor];
        [_business2Button setTitle:@"business2" forState:UIControlStateNormal];
        [_business2Button addTarget:self action:@selector(business2Action) forControlEvents:UIControlEventTouchUpInside];
    }
    return _business2Button;
}


@end
