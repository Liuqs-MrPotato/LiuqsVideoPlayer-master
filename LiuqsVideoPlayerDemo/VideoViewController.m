//
//  VideoViewController.m
//  LiuqsVideoPlayerDemo
//
//  Created by 刘全水 on 2016/11/9.
//  Copyright © 2016年 刘全水. All rights reserved.
//

#import "VideoViewController.h"
#import "LiuqsVideoPlayer.h"

@interface VideoViewController ()

//视频播放器
@property(nonatomic, strong)LiuqsVideoPlayer *player;

@property(nonatomic, assign)BOOL statusShoudHiden;

@end

@implementation VideoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self creatVedioController];
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)creatVedioController {
    
    self.player = [[LiuqsVideoPlayer alloc]init];
    self.player.isLecturePlayer = YES;
    self.player.isAutoPlay = NO;
    self.player.videoURL = [NSURL URLWithString:@"http://test.oss.geneqiao.com/20161108/c4e96eb17fa945bd9a4db77fbba7776b.mp4"];
    [self.view addSubview:_player];
    self.player.playerControl.PlaceHoderView.hidden = NO;
    [self playerBlockEvents];
}

- (void)playerBlockEvents {
    
    __weak VideoViewController *blockSelf = self;
    self.player.PayerControlAnimationHide = ^{
        blockSelf.statusShoudHiden = YES;
        [blockSelf setNeedsStatusBarAppearanceUpdate];
    };
    [self.player setPayerControlAnimationShow:^{
        blockSelf.statusShoudHiden = NO;
        [blockSelf setNeedsStatusBarAppearanceUpdate];
    }];
    
    [self.player setLiuqsPlayerFullScreenBlock:^{
        
    }];
    
    [self.player setLiuqsPlayerShrinkScreenBlock:^{
        blockSelf.player.playerControl.nameLabel.hidden = YES;
        
    }];
    
    [self.player setLiuqsPlayerBackBlock:^{
        
        if (!blockSelf.player.isFullScreenMode) {
            
            [blockSelf dismissViewControllerAnimated:YES completion:nil];
            [blockSelf.player resetPlayer];
            [blockSelf.player removeFromSuperview];
            blockSelf.player = nil;
        }
        
    }];
}
// 页面支持自动转屏
- (BOOL)shouldAutorotate{
    
    return YES;
}

- (BOOL)prefersStatusBarHidden {
    
    return self.statusShoudHiden;
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    
    return UIStatusBarStyleLightContent;
}


- (void)viewWillLayoutSubviews {
    
    [super viewWillLayoutSubviews];
    [self LayoutSubviews];
}

- (void)LayoutSubviews {
    
    [super viewDidLayoutSubviews];
    self.player.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_WIDTH * 9 / 16);
}


@end
