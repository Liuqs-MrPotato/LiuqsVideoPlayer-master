//
//  LiuqsAnimations.m
//  加载动画
//
//  Created by 刘全水 on 16/9/14.
//  Copyright © 2016年 刘全水. All rights reserved.
//

#import "LiuqsAnimations.h"

static CGFloat animationDuration = 0.45;

@implementation LiuqsAnimations

+ (void)addLoadingAnimationWithLayer:(CALayer *)layer {

    CABasicAnimation *transAnimation   = [self createScaleAnimansWithFromValue:@1.0 andToValue:@2.0];
    CABasicAnimation *opacityAnimation = [self createOpacityanimation];
    CAAnimationGroup *animationGroup   = [self createLoadingAnimationGroupWithAnimationS:@[transAnimation,opacityAnimation]];
    [layer addAnimation:animationGroup forKey:@"loadAnimation"];
}

+ (CAAnimationGroup *)createLoadingAnimationGroupWithAnimationS:(NSArray<CABasicAnimation*>*)animations {

    CAAnimationGroup *animationGroup = [CAAnimationGroup animation];
    animationGroup.autoreverses = YES;
    animationGroup.fillMode = kCAFillModeForwards;
    animationGroup.removedOnCompletion = YES;
    animationGroup.repeatCount = MAXFLOAT;
    animationGroup.duration = animationDuration;
    animationGroup.animations = animations;
    return animationGroup;
}

+ (CABasicAnimation *)createScaleAnimansWithFromValue:(id)fromValue andToValue:(id)toValue {
    
    CABasicAnimation *scaleAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    scaleAnimation.autoreverses = YES;
    scaleAnimation.fillMode = kCAFillModeForwards;
    scaleAnimation.removedOnCompletion = YES;
    scaleAnimation.repeatCount = MAXFLOAT;
    scaleAnimation.duration = animationDuration;
    scaleAnimation.fromValue = fromValue;
    scaleAnimation.toValue = toValue;
    return scaleAnimation;
}

+ (CABasicAnimation *)createOpacityanimation {
    
    CABasicAnimation *opacityAnimation = [CABasicAnimation animationWithKeyPath:@"opacity"];
    opacityAnimation.fromValue = [NSNumber numberWithFloat:0.0];
    opacityAnimation.toValue = [NSNumber numberWithFloat:1.0];
    opacityAnimation.autoreverses = YES;
    opacityAnimation.fillMode = kCAFillModeForwards;
    opacityAnimation.removedOnCompletion = YES;
    opacityAnimation.repeatCount = MAXFLOAT;
    opacityAnimation.duration = animationDuration;
    return opacityAnimation;
}

@end
