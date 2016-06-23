//
//  StepperView.h
//  StepperView
//
//  Created by Ryan Cortez on 6/22/16.
//  Copyright © 2016 Ryan Cortez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StepperView : UIView

IB_DESIGNABLE

@property (nonatomic) int minimumStepperValue;
@property (nonatomic) int maximumStepperValue;
@property (nonatomic) NSString *leftButtonTitle;
@property (nonatomic) NSString *rightButtonTitle;
@property (nonatomic) IBInspectable float leftButtonRoundedCorner;
@property (nonatomic) IBInspectable float rightButtonRoundedCorner;


- (instancetype) initWithFrame:(CGRect)frame withMinimumValue: (int) minimumValue andMaximumValue: (int) maximumValue;
- (instancetype) initWithFrame:(CGRect)frame withLeftButtonTitle: (NSString *) leftButtonTitle andRightButtonTitle: (NSString *) rightButtonTitle;
- (instancetype) initWithFrame:(CGRect)frame minimumValue: (int) minimumValue maximumValue: (int) maximumValue leftButtonTitle: (NSString *) leftButtonTitle andRightButtonTitle: (NSString *) rightButtonTitle;

@end
