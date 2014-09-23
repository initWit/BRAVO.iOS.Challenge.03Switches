//
//  UISwitch+NRDForcedAnimation.h
//  FlippingSwitches
//
//  Created by Robert Figueras on 9/23/14.
//  Copyright (c) 2014 Ben Dolmar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UISwitch (NRDForcedAnimation)
-(void)animateSwitchBasedOnValue:(NSNumber *)inputValue;
@end
