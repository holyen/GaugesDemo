//
//  ADGauge.m
//  GaugesDemo
//
//  Created by Holyen Zou on 13-4-27.
//  Copyright (c) 2013年 AnyData.com. All rights reserved.
//

#import "ADGauge.h"
#define CONVERT(x)  (x * M_PI / 180)
#define BOUNDS_WIDTH self.bounds.size.width
#define BOUNDS_HEIGHT self.bounds.size.height

@implementation ADGauge

- (id)initWithFrame:(CGRect)frame
            bgImage:(UIImage *)aBGImage
       pointerImage:(UIImage *)aPointerImage
{
    if (self = [super initWithFrame:frame])
    {
        if (aBGImage) {
            _gaugeBGImageView = [[UIImageView alloc] initWithImage:aBGImage];
            CGRect bgImageFrame = _gaugeBGImageView.frame;
            bgImageFrame.size = frame.size;
            _gaugeBGImageView.frame = bgImageFrame;
            [self addSubview:_gaugeBGImageView];
        }

        if (aPointerImage) {
            _pointerImageView = [[UIImageView alloc] initWithImage:aPointerImage];
            _pointerImageView.layer.anchorPoint = CGPointMake(0.5, 1);

            NSLog(@"bounds_width:%f &&& bounds_height:%f",BOUNDS_WIDTH,BOUNDS_HEIGHT);
            _pointerImageView.frame = CGRectMake((BOUNDS_WIDTH - 5) / 2, (BOUNDS_HEIGHT/2) - 86, 10, 86);
            [self addSubview:_pointerImageView];
            
            
        }
    }
    return self;
}

/** 暂时实现这个方法 */
- (id)initWithFrame:(CGRect)frame
           minValue:(CGFloat)aMinValue
           maxValue:(CGFloat)aMaxValue
         totalMarks:(NSInteger)aTotalMarks
         totalAngle:(CGFloat)aTotalAngle
{
    self = [self initWithFrame:frame
                       bgImage:[UIImage imageNamed:@"speed_indicator_kmph.png"] //400 X 400
                  pointerImage:[UIImage imageNamed:@"pointer2.png"]];//10X86
    if (self)
    {
        _minValue = 0.0;
        _maxValue = 180;
        _totalmarks = 10;
        _totalAngle = 290;
        _centerOfCircle = CGPointMake(BOUNDS_WIDTH / 2, BOUNDS_HEIGHT / 2);
        _diameter = BOUNDS_HEIGHT;
        _beginRadian = -145;
        _endRadian = 140;
        self.backgroundColor = [UIColor redColor];
    }
    return self;
}

- (void)initGauge
{
    //_pointerImageView.layer.transform = CATransform3DRotate(CATransform3DIdentity, CONVERT(_beginRadian), 0, 0, 1);
}

- (void)runFromValue:(CGFloat)aFromValue
             toValue:(CGFloat)aToValue
            animated:(BOOL)aAnimated
           hasEffect:(BOOL)aHasEffect
{
    _fromRotate = aFromValue;
    _destinationRotate = aToValue;
    _currentRotate = 0;
    _currentRotate = (_destinationRotate > _fromRotate ? _fromRotate + 1 : _fromRotate - 1);
    [_pointerImageView.layer removeAllAnimations];
    [self startAnimation];
}

- (void)startAnimation
{
    [UIView beginAnimations:@"rotateAnimate" context:nil];
    [UIView setAnimationDuration:0.03];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(endAnimation)];
    NSLog(@"Rotate:%f",CONVERT(_currentRotate));
    _pointerImageView.transform = CGAffineTransformMakeRotation(CONVERT(_currentRotate));
    [UIView commitAnimations];
}

- (void)endAnimation
{
    _currentRotate += (_destinationRotate > _fromRotate ? 1 : -1);
    BOOL isChange = _destinationRotate > _fromRotate;
    
    if (isChange) {
        if (_currentRotate >= _destinationRotate) {
            //end
        }
        else
            [self startAnimation];
    } else {
        if (_currentRotate <= _destinationRotate) {
            //end
        }
        else
            [self startAnimation];
    }
}

@end
