//
//  StepperView.m
//  StepperView
//
//  Created by Ryan Cortez on 6/22/16.
//  Copyright © 2016 Ryan Cortez. All rights reserved.
//

#import "StepperView.h"

@implementation StepperView
{
    UIButton *stepperViewLeftButton;
    UIButton *stepperViewRightButton;
    UILabel *stepperViewLabel;
}

#pragma mark - Initializers

- (instancetype) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];

    CGFloat stepperButtonAndLabelWidth = frame.size.width / 3;
    CGFloat stepperViewHeight = frame.size.height;
    
    stepperViewLeftButton= [[UIButton alloc]initWithFrame:CGRectMake(0, 0, stepperButtonAndLabelWidth, stepperViewHeight)];
    stepperViewLabel = [[UILabel alloc]initWithFrame:CGRectMake(stepperButtonAndLabelWidth, 0, stepperButtonAndLabelWidth, stepperViewHeight)];
    stepperViewRightButton = [[UIButton alloc]initWithFrame: CGRectMake(stepperButtonAndLabelWidth * 2, 0, stepperButtonAndLabelWidth, stepperViewHeight)];
    
    [self setupDefaults];
    
    [self addSubview:stepperViewLeftButton];
    [self addSubview:stepperViewRightButton];
    [self addSubview:stepperViewLabel];
    
    return self;
}

- (instancetype) initWithFrame:(CGRect)frame withMinimumValue: (int) minimumValue andMaximumValue: (int) maximumValue {
    self = [self initWithFrame:frame];
    
    self.minimumStepperValue = minimumValue;
    self.maximumStepperValue = maximumValue;
    return self;
}

- (instancetype) initWithFrame:(CGRect)frame withLeftButtonTitle: (NSString *) leftButtonTitle andRightButtonTitle: (NSString *) rightButtonTitle {
    self = [self initWithFrame:frame];
    
    stepperViewLeftButton.titleLabel.text = leftButtonTitle;
    stepperViewRightButton.titleLabel.text = leftButtonTitle;
    return self;
}

- (instancetype) initWithFrame:(CGRect)frame minimumValue: (int) minimumValue maximumValue: (int) maximumValue leftButtonTitle: (NSString *) leftButtonTitle andRightButtonTitle: (NSString *) rightButtonTitle {
    self = [self initWithFrame:frame];
    
    self.minimumStepperValue = minimumValue;
    self.maximumStepperValue = maximumValue;
    [stepperViewLeftButton setTitle:leftButtonTitle forState:UIControlStateNormal];
    [stepperViewRightButton setTitle:rightButtonTitle forState:UIControlStateNormal];
    return self;
}

#pragma mark - Custom Setters

- (void)setLeftButtonRoundedCorner:(float)leftButtonRoundedCorner {
    stepperViewLeftButton.layer.cornerRadius = leftButtonRoundedCorner;
}

- (void)setRightButtonRoundedCorner:(float)rightButtonRoundedCorner {
    stepperViewRightButton.layer.cornerRadius = rightButtonRoundedCorner;
}

- (void)setLeftButtonTitle:(NSString *)leftButtonTitle {
    [stepperViewLeftButton setTitle:leftButtonTitle forState:UIControlStateNormal];
}

- (void)setRightButtonTitle:(NSString *)rightButtonTitle {
    [stepperViewRightButton setTitle:rightButtonTitle forState:UIControlStateNormal];
}

#pragma mark - Delegate Methods

#pragma mark - Helper Methods

- (void) setupDefaults {
    
    [self setupDefaultFont];
    [self setupDefaultColors];
    [self setupDefaultCornerRadius];
    [self setupDefaultContent];
    [self setupDefaultActions];
}

- (void) setupDefaultColors {
    UIColor *color = [UIColor redColor];
    stepperViewLeftButton.backgroundColor = color;
    stepperViewRightButton.backgroundColor = color;
}

- (void) setupDefaultCornerRadius {
    stepperViewLeftButton.layer.cornerRadius = 10.0;
    stepperViewRightButton.layer.cornerRadius = 10.0;
}

- (void) setupDefaultFont {
    stepperViewLabel.font = [UIFont systemFontOfSize:23];
    stepperViewLabel.textAlignment = NSTextAlignmentCenter;
    stepperViewLeftButton.titleLabel.font = [UIFont systemFontOfSize:50];
    stepperViewRightButton.titleLabel.font = [UIFont systemFontOfSize:50];
}

- (void) setupDefaultContent {
    [stepperViewLeftButton setTitle:@"-" forState:UIControlStateNormal];
    [stepperViewRightButton setTitle:@"+" forState:UIControlStateNormal];
    stepperViewLabel.text = @"0";
}

- (void) setupDefaultActions {
    [stepperViewLeftButton addTarget:self action:@selector(leftButtonPress:) forControlEvents:UIControlEventTouchUpInside];
    [stepperViewRightButton addTarget:self action:@selector(rightButtonPress:) forControlEvents:UIControlEventTouchUpInside];
}

#pragma mark - Actions

- (IBAction)leftButtonPress:(UIButton *)button {
    if (stepperViewLabel.text.integerValue > _minimumStepperValue) {
        stepperViewLabel.text = [NSString stringWithFormat:@"%d", (stepperViewLabel.text.integerValue - 1)];
    }
}

- (IBAction)rightButtonPress:(UIButton *)button {
    if (stepperViewLabel.text.integerValue < _maximumStepperValue) {
        stepperViewLabel.text = [NSString stringWithFormat:@"%d", (stepperViewLabel.text.integerValue + 1)];
    }
}

@end
