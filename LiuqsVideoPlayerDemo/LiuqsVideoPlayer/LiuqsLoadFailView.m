//
//  LiuqsLoadFailView.m
//  LiuqsVideoPlayerDemo
//
//  Created by 刘全水 on 16/9/18.
//  Copyright © 2016年 刘全水. All rights reserved.
//

#import "LiuqsLoadFailView.h"

#define SCREEN_WIDTH  [UIScreen mainScreen].bounds.size.width

#define SCREEN_HEIGHT  [UIScreen mainScreen].bounds.size.height

@implementation LiuqsLoadFailView

- (instancetype)initWithFrame:(CGRect)frame {

    if (self = [super initWithFrame:frame]) {
        
        self.frame = frame;
        [self initSomething];
        [self addSubview:self.FailLabel];
        [self addSubview:self.reLoadBtn];
    }
    return self;
}

- (void)initSomething {

    self.userInteractionEnabled = YES;
}

- (UILabel *)FailLabel {

    if (!_FailLabel) {
        
        _FailLabel = [[UILabel alloc]init];
        _FailLabel.textAlignment = NSTextAlignmentCenter;
        _FailLabel.textColor = [UIColor colorWithRed:178.0 / 255.0 green:178.0 / 255.0 blue:178.0 / 255.0 alpha:1.0];
        _FailLabel.text = @"加载失败";
        _FailLabel.font = [UIFont boldSystemFontOfSize:14];
    }
    return _FailLabel;
}

- (UIButton *)reLoadBtn {

    if (!_reLoadBtn) {
        
        _reLoadBtn = [[UIButton alloc]init];
        [_reLoadBtn setTitle:@"点击重试" forState:UIControlStateNormal];
        _reLoadBtn.layer.cornerRadius = 15.0f;
        _reLoadBtn.titleLabel.font = [UIFont boldSystemFontOfSize:16];
        [_reLoadBtn setTitleColor:[UIColor colorWithRed:178.0 / 255.0 green:178.0 / 255.0 blue:178.0 / 255.0 alpha:1.0] forState:UIControlStateNormal];
        _reLoadBtn.backgroundColor = [UIColor colorWithRed:68.0 / 255.0 green:68.0 / 255.0 blue:68.0 / 255.0 alpha:1.0];
    }
    return _reLoadBtn;
}


- (void)layoutSubviews {

    [super layoutSubviews];
    self.FailLabel.frame = CGRectMake(0, self.frame.size.height * 2 / 5, SCREEN_WIDTH, 25);
    self.reLoadBtn.frame = CGRectMake((SCREEN_WIDTH - 100) * 0.5, CGRectGetMaxY(self.FailLabel.frame) + 20, 100, 30);
}



@end
