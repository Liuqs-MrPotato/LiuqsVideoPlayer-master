//
//  LiuqsVideoPlayer.h
//  LiuqsVideoPlayerDemo
//
//  Created by 刘全水 on 16/7/12.
//  Copyright © 2016年 刘全水. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LiuqsPlayControlView.h"

@interface LiuqsVideoPlayer : UIView

//视频链接
@property(nonatomic, strong)NSURL  *videoURL;
//自动播放
@property(nonatomic, assign)BOOL   isAutoPlay;
//视频名字
@property(nonatomic, copy)NSString *videoName;
//视频大小
@property(nonatomic, copy)NSString *VideoSize;
//是否是本地的播放任务
@property(nonatomic, assign)BOOL   isLocalTask;
//是否允许播放
@property(nonatomic, assign)BOOL   isAllowPlay;
//是否是播放器控制器的比播放器
@property(nonatomic, assign)BOOL   isPlayerVCView;
//是否是网络课堂的播放器
@property(nonatomic, assign)BOOL   isLecturePlayer;
//全屏模式
@property(nonatomic, assign)BOOL   isFullScreenMode;
//控制视图
@property(nonatomic, strong)LiuqsPlayControlView *playerControl;
//返回事件
@property(nonatomic, copy)void(^LiuqsPlayerBackBlock)(void);
//播放事件
@property(nonatomic, copy)void(^LiuqsPlayerPlayBlock)(void);
//获取视频信息的事件，用于处理没有拿到视频链接失败后重新获取的情况
@property(nonatomic, copy)void(^requestVideoInfoBlock)(void);
//暂停事件
@property(nonatomic, copy)void(^LiuqsPlayerPasueBlock)(void);
//播放结束事件
@property(nonatomic, copy)void(^LiuqsPlayerPlayEndBlock)(void);
//控制视图展示事件
@property(nonatomic, copy)void(^PayerControlAnimationShow)(void);
//控制视图隐藏事件
@property(nonatomic, copy)void(^PayerControlAnimationHide)(void);
//全屏事件
@property(nonatomic, copy)void(^LiuqsPlayerFullScreenBlock)(void);
//竖屏事件
@property(nonatomic, copy)void(^LiuqsPlayerShrinkScreenBlock)(void);

//播放视图的播放事件
- (void)play;
//播放视图暂停事件
- (void)pasue;
//防止循环引用，播放器的播放事件
- (void)playerPlay;
//防止循环引用，播放器的暂停事件
- (void)playerPause;
//重置播放器
- (void)resetPlayer;
//切换视频播放
- (void)resetPlayerWithUrl:(NSURL *)VideoUrl;
//返回小屏幕
- (void)shrinkScreenBtnClick:(UIButton *)shrinkBtn;

@end
