//
//  NRDSwitchCalculator.h
//  FlippingSwitches
//
//  Created by Robert Figueras on 9/18/14.
//  Copyright (c) 2014 Ben Dolmar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NRDSwitchCalculator : NSObject

@property (nonatomic, assign) NSInteger totalNumberOfSwitches;

-(void)calculateSwitchCountFromSwitchValue:(NSInteger)switchValue;
-(BOOL)areAllSwitchesOn;
-(void)resetSwitchCounterToMasterSwitchValue:(NSInteger)masterSwitchValue;
@end
