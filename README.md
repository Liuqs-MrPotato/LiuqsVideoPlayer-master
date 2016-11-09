创建方法：
- (void)playNormalVideo {

    PlayerViewController *playerVC = [[PlayerViewController alloc]init];
    [self presentViewController:playerVC animated:YES completion:nil];
}

- (void)playLecture {
    
    VideoViewController *videoVC = [[VideoViewController alloc]init];
    [self presentViewController:videoVC animated:YES completion:nil];
}
