//
//  UIButton+Style.m
//  JBHope
//
//  Created by Magi on 15/6/17.
//  Copyright (c) 2015年 MengBaby Information Technology (Shanghai) Co., Ltd. All rights reserved.
//

#import "UIButton+Style.h"
@implementation UIButton (Style)


- (void)swapImageText {
    self.transform = CGAffineTransformScale(self.transform, -1.0f, 1.0f);
    self.titleLabel.transform = CGAffineTransformScale(self.titleLabel.transform, -1.0f, 1.0f);
    self.imageView.transform = CGAffineTransformScale(self.imageView.transform, -1.0f, 1.0f);
}

- (void)setNormalImage:(NSString *)normalImageName selectedImage:(NSString *)selectedImageName {
    [self setImage:[UIImage imageNamed:normalImageName] forState:UIControlStateNormal];
    [self setImage:[UIImage imageNamed:selectedImageName] forState:UIControlStateHighlighted];
    [self setImage:[UIImage imageNamed:selectedImageName] forState:UIControlStateSelected];
}


- (void)centerVerticallyWithPadding:(float)padding
{
    CGSize imageSize = self.imageView.frame.size;
    CGSize titleSize = self.titleLabel.frame.size;
    
    CGFloat totalHeight = (imageSize.height + titleSize.height + padding);
    
    self.imageEdgeInsets = UIEdgeInsetsMake(- (totalHeight - imageSize.height),
                                            0.0f,
                                            0.0f,
                                            - titleSize.width);
    
    self.titleEdgeInsets = UIEdgeInsetsMake(0.0f,
                                            - imageSize.width,
                                            - (totalHeight - titleSize.height),
                                            0.0f);
}

- (void)animationSelected
{
    [UIView animateWithDuration:0.35 animations:^{
        onMainThread(
                     self.imageView.transform = CGAffineTransformRotate(self.imageView.transform, M_PI);
        )
    } completion:nil];
}


- (void)centerVertically
{
    const CGFloat kDefaultPadding = 6.0f;
    
    [self centerVerticallyWithPadding:kDefaultPadding];
}

- (RACSignal *)addActionWithEvent:(UIControlEvents)event
{
    return [self rac_signalForControlEvents:event];
}

- (RACSignal *)addAction
{
    return [self addActionWithEvent:UIControlEventTouchUpInside];
}


@end
