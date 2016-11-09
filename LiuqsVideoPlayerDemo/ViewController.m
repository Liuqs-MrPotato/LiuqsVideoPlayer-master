//
//  ViewController.m
//  LiuqsVideoPlayerDemo
//
//  Created by 刘全水 on 16/6/8.
//  Copyright © 2016年 刘全水. All rights reserved.
//

#import "ViewController.h"
#import "VideoViewController.h"
#import "PlayerViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIButton *playLectureBtn = [[UIButton alloc]initWithFrame:CGRectMake(50, 100, SCREEN_WIDTH - 100, 50)];
    [playLectureBtn setTitle:@"点击播放课程视频" forState:UIControlStateNormal];
    playLectureBtn.backgroundColor = [UIColor lightGrayColor];
    [playLectureBtn addTarget:self action:@selector(playLecture) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:playLectureBtn];
    
    UIButton *playNormalBtn = [[UIButton alloc]initWithFrame:CGRectMake(50, 300, SCREEN_WIDTH - 100, 50)];
    [playNormalBtn setTitle:@"点击播放普通视频" forState:UIControlStateNormal];
    playNormalBtn.backgroundColor = [UIColor lightGrayColor];
    [playNormalBtn addTarget:self action:@selector(playNormalVideo) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:playNormalBtn];
}

- (void)playNormalVideo {

    PlayerViewController *playerVC = [[PlayerViewController alloc]init];
    [self presentViewController:playerVC animated:YES completion:nil];
}

- (void)playLecture {
    
    VideoViewController *videoVC = [[VideoViewController alloc]init];
    [self presentViewController:videoVC animated:YES completion:nil];
}



@end
