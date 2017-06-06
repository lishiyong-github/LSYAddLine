//
//  UIView+Line.h
//  nbOneMap
//
//  Created by shiyong_li on 17/3/29.
//  Copyright © 2017年 dist. All rights reserved.
//主要是用来给View 添加线条用的

#import <UIKit/UIKit.h>

@interface UIView (Line)
@property (nonatomic,strong) UIView *topLine;
@property (nonatomic,strong) UIView *leftLine;
@property (nonatomic,strong) UIView *bottomLine;
@property (nonatomic,strong) UIView *rightLine;
- (void)addTopLine;
- (void)addLeftLine;
- (void)addBottomLine;
- (void)addRightLine;
- (void)addAllLine;
- (void)addAllLineWithOutTop;

- (void)addTopLineWithColor:(UIColor *)color;
- (void)addLeftLineWithColor:(UIColor *)color;
- (void)addBottomLineWithColor:(UIColor *)color;
- (void)addRightLineWithColor:(UIColor *)color;
- (void)addAllLineWithColor:(UIColor *)color;
@end
