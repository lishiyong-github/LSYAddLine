//
//  UIView+Line.m
//  nbOneMap
//
//  Created by shiyong_li on 17/3/29.
//  Copyright © 2017年 dist. All rights reserved.
//

#import "UIView+Line.h"
#import <objc/runtime.h>
#define kLineWidth 1
#define kDefaultLineColor [[UIColor lightGrayColor] colorWithAlphaComponent:0.4]
@implementation UIView (Line)
- (UIView *)topLine
{
    UIView *topLine = objc_getAssociatedObject(self, @selector(topLine));
    if (!topLine) {
        topLine = [UIView newAutoLayoutView];
        [self setTopLine:topLine];
    }
    return topLine;
}

- (void)setTopLine:(UIView *)topLine
{
    objc_setAssociatedObject(self, @selector(topLine), topLine, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (UIView *)leftLine
{
    UIView *leftLine = objc_getAssociatedObject(self, @selector(leftLine));
    if (!leftLine) {
        leftLine = [UIView newAutoLayoutView];
        [self setLeftLine:leftLine];
    }
    return leftLine;
}

- (void)setLeftLine:(UIView *)leftLine
{
    objc_setAssociatedObject(self, @selector(leftLine), leftLine, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIView *)bottomLine
{
    UIView *bottomLine = objc_getAssociatedObject(self, @selector(bottomLine));
    if (!bottomLine) {
        bottomLine = [UIView newAutoLayoutView];
        [self setBottomLine:bottomLine];
    }
    return bottomLine;
}

- (void)setBottomLine:(UIView *)bottomLine
{
    objc_setAssociatedObject(self, @selector(bottomLine), bottomLine, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (UIView *)rightLine
{
    UIView *rightLine = objc_getAssociatedObject(self, @selector(rightLine));
    if (!rightLine) {
        rightLine = [UIView newAutoLayoutView];
        [self setRightLine:rightLine];
    }
    return rightLine;
}

- (void)setRightLine:(UIView *)rightLine
{
    objc_setAssociatedObject(self, @selector(rightLine), rightLine, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)addLeftLine
{
    [self addLeftLineWithColor:kDefaultLineColor];
}

- (void)addRightLine
{
    [self addRightLineWithColor:kDefaultLineColor];
}

- (void)addTopLine
{
    [self addTopLineWithColor:kDefaultLineColor];
}

- (void)addBottomLine
{
    [self addBottomLineWithColor:kDefaultLineColor];
}

- (void)addLeftLineWithColor:(UIColor *)color
{
    [self addSubview:self.leftLine];
    [self.leftLine setBackgroundColor:color];
    [self.leftLine autoPinEdgesToSuperviewEdgesWithInsets:UIEdgeInsetsZero excludingEdge:ALEdgeRight];
    [self.leftLine autoSetDimension:ALDimensionWidth toSize:kLineWidth];
}

- (void)addRightLineWithColor:(UIColor *)color
{
    [self addSubview:self.rightLine];
    [self.rightLine setBackgroundColor:color];
    [self.rightLine autoPinEdgesToSuperviewEdgesWithInsets:UIEdgeInsetsZero excludingEdge:ALEdgeLeft];
    [self.rightLine autoSetDimension:ALDimensionWidth toSize:kLineWidth];
}

- (void)addTopLineWithColor:(UIColor *)color
{
    [self addSubview:self.topLine];
    [self.topLine setBackgroundColor:color];
    [self.topLine autoPinEdgesToSuperviewEdgesWithInsets:UIEdgeInsetsZero excludingEdge:ALEdgeBottom];
    [self.topLine autoSetDimension:ALDimensionHeight toSize:kLineWidth];
}

- (void)addBottomLineWithColor:(UIColor *)color
{
    [self addSubview:self.bottomLine];
    [self.bottomLine setBackgroundColor:color];
    [self.bottomLine autoPinEdgesToSuperviewEdgesWithInsets:UIEdgeInsetsZero excludingEdge:ALEdgeTop];
    [self.bottomLine autoSetDimension:ALDimensionHeight toSize:kLineWidth];
}
- (void)addAllLine
{
    [self addLeftLineWithColor:kDefaultLineColor];
    [self addTopLineWithColor:kDefaultLineColor];
    [self addBottomLineWithColor:kDefaultLineColor];
    [self addRightLineWithColor:kDefaultLineColor];
}
- (void)addAllLineWithOutTop
{
    [self addLeftLineWithColor:kDefaultLineColor];
    [self addBottomLineWithColor:kDefaultLineColor];
    [self addRightLineWithColor:kDefaultLineColor];
}

- (void)addAllLineWithColor:(UIColor *)color
{
    [self addLeftLineWithColor:color];
    [self addTopLineWithColor:color];
    [self addBottomLineWithColor:color];
    [self addRightLineWithColor:color];
}
@end
