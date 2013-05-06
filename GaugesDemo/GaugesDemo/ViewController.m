//
//  ViewController.m
//  GaugesDemo
//
//  Created by Holyen Zou on 13-4-27.
//  Copyright (c) 2013年 AnyData.com. All rights reserved.
//

#import "ViewController.h"
#define CONVERT(x)  (x * M_PI / 180)

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//    self.test = [[Gauge alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
//    self.test.center = self.view.center;
//    [self.view addSubview:self.test];
    self.adGauge = [[ADGauge alloc] initWithFrame:CGRectMake(50, 100, 120, 120) minValue:0 maxValue:180 totalMarks:10 totalAngle:290];
    [self.view addSubview:self.adGauge];
}

- (IBAction)change:(id)sender
{
//    int tem = rand() % 120;
//    [self.test setGaugeValue:tem animation:YES];
//    [self.button setTitle:[NSString stringWithFormat:@"%d",tem] forState:UIControlStateNormal];
    
//    CAKeyframeAnimation *anim = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
//    anim.duration = 2;
//    anim.autoreverses = NO;
//    anim.fillMode = kCAFillModeForwards;
//    anim.removedOnCompletion = NO;
//    anim.values = [NSMutableArray arrayWithObjects:[NSValue valueWithCATransform3D:CATransform3DRotate(CATransform3DIdentity, CONVERT(-125), 0, 0, 1)], [NSValue valueWithCATransform3D:CATransform3DRotate(CATransform3DIdentity, CONVERT(90), 0, 0, 1)],  nil];
//    [self.pointerImageView.layer addAnimation:anim forKey:@"cubeIn"];
    [self.adGauge runFromValue:-90 toValue:-45 animated:YES hasEffect:YES];
}

- (IBAction)sliderChange:(id)sender
{
//    [self.test setGaugeValue:self.sl.value animation:NO];
//    [self.button setTitle:[NSString stringWithFormat:@"%d",(int)self.sl.value] forState:UIControlStateNormal];
}
@end
