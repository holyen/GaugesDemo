//
//  Gauge.h
//  GaugeDemo
//
//  Created by 海锋 周 on 12-3-27.
//  Copyright (c) 2012年 CJLU rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface Gauge : UIView
{
    CGFloat maxNum;
    CGFloat minNum;
    
    CGFloat maxAngle;
    CGFloat minAngle;
    
    CGFloat gaugeValue;
    CGFloat gaugeAngle;
    
    CGFloat angleperValue;
    CGFloat scoleNum;
}

@property (nonatomic, strong) UIImage *gaugeView;
@property (nonatomic, strong) UIImageView *pointer;
@property (nonatomic, strong) NSMutableArray *labelArray;
@property (nonatomic) CGContextRef context;

- (void)setGaugeValue:(CGFloat)value animation:(BOOL)isAnim;

@end
