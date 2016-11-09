//
//  LiuqsPlayerControl.h
//  AVPlayer
//
//  Created by 刘全水 on 16/5/31.
//  Copyright © 2016年 刘全水. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LiuqsLoadFailView.h"
#import "LiuqsLoadingView.h"

@interface LiuqsPlayControlView : UIView

@property(nonatomic, strong)UIImageView    *bottomBar;

@property(nonatomic, strong)UIImageView    *topBar;

@property(nonatomic, strong)UIButton       *playBtn;

@property(nonatomic, strong)UIButton       *pauseBtn;

@property(nonatomic, strong)UIButton       *fullScreenBtn;

@property(nonatomic, strong)UIButton       *shrinkScreenBtn;

@property(nonatomic, strong)UISlider       *PlaySliderView;

@property(nonatomic, strong)UIProgressView *cacheProgressView;

@property(nonatomic, strong)UILabel        *rightTimeLabel;

@property(nonatomic, assign)BOOL           isBarShowing;

@property(nonatomic, strong)UILabel        *horizontalLabel;

@property(nonatomic, strong)UIButton       *backBtn;

@property(nonatomic, assign)BOOL           isShowStatus;

@property(nonatomic, assign)BOOL           isLectureSharkMode;

@property(nonatomic, strong)UILabel        *sizeLabel;

@property(nonatomic, strong)UILabel        *nameLabel;

@property(nonatomic, strong)LiuqsLoadFailView *failView;

@property(nonatomic, strong)LiuqsLoadingView  *LoadingView;

@property(nonatomic, strong)UIImageView       *waterMarkView;

@property(nonatomic, strong)UIProgressView    *BottomProgressView;

@property(nonatomic, strong)UIImageView       *PlaceHoderView;

@property(nonatomic, assign)BOOL              isLoadingViewShow;

@property(nonatomic, assign)BOOL isPlayerVCView;

@property(nonatomic, copy)void (^animationShow)();

@property(nonatomic, copy)void (^animationHide)();

- (void)showLoadingView;

- (void)dissmissLoadingView;

- (void)animateHide;

- (void)animateShow;

@end
