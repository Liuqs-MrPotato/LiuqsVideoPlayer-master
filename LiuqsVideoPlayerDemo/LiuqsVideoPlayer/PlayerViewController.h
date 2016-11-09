//
//  LiuqsVideoController.h
//  LiuqsVideoPlayerDemo
//
//  Created by 刘全水 on 16/9/12.
//  Copyright © 2016年 刘全水. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayerViewController : UIViewController

@property(copy,nonatomic)NSString  *urlStr;

@property(copy,nonatomic)NSString  *fileName;

@property(copy,nonatomic)NSString  *movieLength;

@property (nonatomic, assign) BOOL isLocalTask;

@end
