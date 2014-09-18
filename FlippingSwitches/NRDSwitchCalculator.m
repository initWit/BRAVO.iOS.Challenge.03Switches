//
//  NRDSwitchCalculator.m
//  FlippingSwitches
//
//  Created by Robert Figueras on 9/18/14.
//  Copyright (c) 2014 Ben Dolmar. All rights reserved.
//

#import "NRDSwitchCalculator.h"

@interface NRDSwitchCalculator ()

@end

@implementation NRDSwitchCalculator

- (id) init {
    self = [super init];
    if (self) {
        self.switchCounter = 0;
    }
    return(self);
}


- (BOOL) areAllSwitchesOn
{
    if (self.switchCounter == self.totalNumberOfSwitches) {
        return YES;
    }
    return NO;
}


- (void) calculateSwitchCountFromSwitchValue:(int)switchValue
{
    // add or subtract the switch value to the switch counter
    if (switchValue == 1) {
        self.switchCounter += switchValue;
    } else {
        self.switchCounter -- ;
    }
}


- (void) resetSwitchCounterToMasterSwitchValue:(int)masterSwitchValue
{
    // reset switch counter
    if (masterSwitchValue == 1) {
        self.switchCounter = self.totalNumberOfSwitches;
    } else {
        self.switchCounter = masterSwitchValue;
    }
}

@end
