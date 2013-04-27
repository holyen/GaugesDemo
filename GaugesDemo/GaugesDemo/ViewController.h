//
//  ViewController.h
//  GaugesDemo
//
//  Created by Holyen Zou on 13-4-27.
//  Copyright (c) 2013年 AnyData.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Gauge.h"

@interface ViewController : UIViewController

@property (nonatomic, strong)  Gauge *test;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UISlider *sl;

- (IBAction)change:(id)sender;
- (IBAction)sliderChange:(id)sender;

@end
