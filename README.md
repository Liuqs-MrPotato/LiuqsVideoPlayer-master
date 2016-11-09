创建方法：
    self.player = [[LiuqsVideoPlayer alloc]init];
    
    [self.view addSubview:_player];
    
    _player.videoURL = [NSURL URLWithString:@"http://test.oss.geneqiao.com/20160803/0757045288b7494988a943dcf23e4ea5.mp4"];
    
    //设置frame
- (void)viewWillLayoutSubviews {
    
    [super viewWillLayoutSubviews];
    self.player.frame = CGRectMake(0, playerFrameY, screenW, screenW * 9 / 16);
}
