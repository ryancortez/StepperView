//
//  StepperView.h
//  StepperView
//
//  Created by Ryan Cortez on 6/22/16.
//  Copyright © 2016 Ryan Cortez. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol StepperViewDelegate <NSObject>

- (void) stepperViewCurrentCount: (int) count;

@end


IB_DESIGNABLE
@interface StepperView : UIView

@property (nonatomic) IBInspectable int minimumStepperValue;
@property (nonatomic) IBInspectable int maximumStepperValue;
@property (nonatomic) IBInspectable NSString *leftButtonTitle;
@property (nonatomic) IBInspectable  NSString *rightButtonTitle;
@property (nonatomic) IBInspectable float leftButtonRoundedCorner;
@property (nonatomic) IBInspectable float rightButtonRoundedCorner;
@property id<StepperViewDelegate> delegate;

- (instancetype) initWithFrame:(CGRect)frame withMinimumValue: (int) minimumValue andMaximumValue: (int) maximumValue;
- (instancetype) initWithFrame:(CGRect)frame withLeftButtonTitle: (NSString *) leftButtonTitle andRightButtonTitle: (NSString *) rightButtonTitle;
- (instancetype) initWithFrame:(CGRect)frame minimumValue: (int) minimumValue maximumValue: (int) maximumValue leftButtonTitle: (NSString *) leftButtonTitle andRightButtonTitle: (NSString *) rightButtonTitle;

@end
