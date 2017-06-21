//
//  UIButton+Style.h
//  JBHope
//
//  Created by Magi on 15/6/17.
//  Copyright (c) 2015年 MengBaby Information Technology (Shanghai) Co., Ltd. All rights reserved.
//





#import <UIKit/UIKit.h>

@interface UIButton (Style)

- (void)setNormalImage:(NSString *)normalImageName selectedImage:(NSString *)selectedImageName;

/**
 旋转图片与文字的位置
 */
- (void)swapImageText;
- (void)centerVerticallyWithPadding:(float)padding;
- (void)centerVertically;

/**
 选中 按钮的图片旋转
 */
- (void)animationSelected;

/**
 按钮的点击事件

 @param event UIControlEvents type
 @return RACSignal 对象
 */
- (RACSignal *)addActionWithEvent:(UIControlEvents)event;

/**
  按钮的点击事件
 event default UIControlEventTouchUpInside
 @return  RACSignal 对象
 */
- (RACSignal *)addAction;


@end
