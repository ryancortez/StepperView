//
//  StepperView.m
//  StepperView
//
//  Created by Ryan Cortez on 6/22/16.
//  Copyright © 2016 Ryan Cortez. All rights reserved.
//

#import "StepperView.h"

@implementation StepperView

- (instancetype) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    CGFloat stepperButtonWidth = 50;
    CGFloat stepperViewLabelWidth = 75;
    
    UIButton *stepperViewLeftButton= [[UIButton alloc]initWithFrame:CGRectMake(0, 0, stepperButtonWidth, 50)];
    UIButton *stepperViewRightButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, stepperButtonWidth, 50)];
    UILabel *stepperViewLabel = [[UILabel alloc]initWithFrame:CGRectMake(stepperButtonWidth, 0, stepperViewLabelWidth, 50)];
    
    self.backgroundColor = [UIColor lightGrayColor];
    stepperViewLeftButton.backgroundColor = [UIColor blueColor];
    stepperViewLabel.backgroundColor = [UIColor whiteColor];
    stepperViewRightButton.backgroundColor = [UIColor blueColor];
    
    [stepperViewLeftButton setTitle:@"-" forState:UIControlStateNormal];
    stepperViewLabel.text = @"0";
    stepperViewLabel.textAlignment = NSTextAlignmentCenter;
    [stepperViewRightButton setTitle:@"+" forState:UIControlStateNormal];
    
    
    
    
    stepperViewRightButton.frame = CGRectMake(stepperViewLabelWidth + stepperViewLabelWidth, 0, stepperButtonWidth, 50);
    [self addSubview:stepperViewLeftButton];
    [self addSubview:stepperViewRightButton];
    [self addSubview:stepperViewLabel];
    
    return self;
}

@end
