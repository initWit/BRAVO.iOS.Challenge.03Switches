//
//  NRDSwitchCalculator.h
//  FlippingSwitches
//
//  Created by Robert Figueras on 9/18/14.
//  Copyright (c) 2014 Ben Dolmar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NRDSwitchCalculator : NSObject

@property int switchCounter;
@property int totalNumberOfSwitches;

- (void) calculateSwitchCountFromSwitchValue:(int)switchValue;
- (BOOL) areAllSwitchesOn;
- (void) resetSwitchCounterToMasterSwitchValue:(int)masterSwitchValue;
@end
