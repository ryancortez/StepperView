//
//  ViewController.m
//  StepperView
//
//  Created by Ryan Cortez on 6/22/16.
//  Copyright © 2016 Ryan Cortez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    StepperView *stepperView = [[StepperView alloc] init];
    stepperView.frame = CGRectMake(0, 0, 200, 50);
    stepperView.center = self.view.center;
    [self.view addSubview:stepperView];
}

@end
