//
//  UISwitch+NRDForcedAnimation.m
//  FlippingSwitches
//
//  Created by Robert Figueras on 9/23/14.
//  Copyright (c) 2014 Ben Dolmar. All rights reserved.
//

#import "UISwitch+NRDForcedAnimation.h"

@implementation UISwitch (NRDForcedAnimation)

-(void)animateSwitchBasedOnValue:(NSNumber *)inputValue
{
    // get integer value of passed in master switch value object
    if ([inputValue intValue] == 1) {
        [self setOn:YES animated:YES];
    }
    else {
        [self setOn:NO animated:YES];
    }
}

@end
