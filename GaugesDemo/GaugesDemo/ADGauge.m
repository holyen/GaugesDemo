//
//  ADGauge.m
//  GaugesDemo
//
//  Created by Holyen Zou on 13-4-27.
//  Copyright (c) 2013年 AnyData.com. All rights reserved.
//

#import "ADGauge.h"

@implementation ADGauge

- (id)initWithFrame:(CGRect)frame
           minValue:(CGFloat)aMinValue
           maxValue:(CGFloat)aMaxValue
         totalMarks:(NSInteger)aTotalMarks
         totalAngle:(CGFloat)aTotalAngle
{
    self = [super initWithFrame:frame];
    if (self) {
        
        _minValue = aMinValue;
        _maxValue = aMaxValue;
        _totalmarks = aTotalMarks;
        _totalAngle = aTotalAngle;
        
        _gaugeBGImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"gaugeback.png"]];
        [self addSubview:_gaugeBGImageView];
        
        UIImage *pointerImage = [UIImage imageNamed:@"pointer2.png"];
        _pointerImageView = [[UIImageView alloc] initWithImage:pointerImage];
        _pointerImageView.layer.anchorPoint = CGPointMake(0.5, 0.78);
        _pointerImageView.center = self.center;
        [self addSubview:_pointerImageView];
        
    }
    return self;
}

- (void)drawGauge
{
    
}

- (void)runFromValue:(CGFloat)aFromValue
             toValue:(CGFloat)aToValue
            animated:(BOOL)aAnimated
           hasEffect:(BOOL)aHasEffect
{
    
}

@end
