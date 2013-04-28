//
//  ADGauge.h
//  GaugesDemo
//
//  Created by Holyen Zou on 13-4-27.
//  Copyright (c) 2013年 AnyData.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface ADGauge : UIView
{
    UIImageView *_gaugeBGImageView;
    UIImageView *_pointerImageView;
    
    CGFloat _minValue;
    CGFloat _maxValue;
    NSInteger _totalmarks;
    CGFloat _totalAngle;
    
    CGPoint _centerOfCircle;
    CGFloat _diameter;
}

- (id)initWithFrame:(CGRect)frame
           minValue:(CGFloat)aMinValue
           maxValue:(CGFloat)aMaxValue
         totalMarks:(NSInteger)aTotalMarks
         totalAngle:(CGFloat)aTotalAngle;

- (void)runFromValue:(CGFloat)aFromValue
             toValue:(CGFloat)aToValue
            animated:(BOOL)aAnimated
           hasEffect:(BOOL)aHasEffect;

@end
