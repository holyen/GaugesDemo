//
//  ViewController.m
//  GaugesDemo
//
//  Created by Holyen Zou on 13-4-27.
//  Copyright (c) 2013年 AnyData.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.test = [[Gauge alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    self.test.center = self.view.center;
    [self.view addSubview:self.test];
}

- (IBAction)change:(id)sender
{
    int tem = rand() % 120;
    [self.test setGaugeValue:tem animation:YES];
    [self.button setTitle:[NSString stringWithFormat:@"%d",tem] forState:UIControlStateNormal];
}

- (IBAction)sliderChange:(id)sender
{
    [self.test setGaugeValue:self.sl.value animation:NO];
    [self.button setTitle:[NSString stringWithFormat:@"%d",(int)self.sl.value] forState:UIControlStateNormal];
}
@end
