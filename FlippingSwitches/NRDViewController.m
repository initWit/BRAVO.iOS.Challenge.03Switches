//
//  NRDViewController.m
//  FlippingSwitches
//
//  Created by Ben Dolmar on 12/9/13.
//  Copyright (c) 2013 Ben Dolmar. All rights reserved.
//

#import "NRDViewController.h"
#import "NRDSwitchCalculator.h"
#import "UISwitch+NRDForcedAnimation.h"

@interface NRDViewController ()
@property (nonatomic, strong) IBOutletCollection(UISwitch) NSArray *childSwitches;
@property (nonatomic, weak) IBOutlet UISwitch *masterSwitch;
@property (nonatomic, strong) NRDSwitchCalculator *calculator;
@end

@implementation NRDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.calculator = [[NRDSwitchCalculator alloc] init];
    self.calculator.totalNumberOfSwitches = self.childSwitches.count;
}


#pragma mark Action Methods

- (IBAction)flippedSwitch:(UISwitch *)childSwitch
{
    NSInteger childSwitchValue = childSwitch.on;
    
    // calculate how many switches are flipped
    [self.calculator calculateSwitchCountFromSwitchValue:childSwitchValue];
    
    // set the value of the master switch as needed
    [self setMasterSwitchValue];
}


- (IBAction)flippedMasterSwitch:(UISwitch *)masterSwitch
{
    
    NSNumber *masterSwitchValueObject = [NSNumber numberWithBool:self.masterSwitch.on];
    
    // send all the child switches to be animated
    [self.childSwitches makeObjectsPerformSelector:@selector(animateSwitchBasedOnValue:) withObject:masterSwitchValueObject];
    
    NSInteger masterSwitchValue = self.masterSwitch.on;
    
    // calculate the value of the switch counter based on the master switch
    [self.calculator resetSwitchCounterToMasterSwitchValue:masterSwitchValue];
}


#pragma mark Helper Calculation Methods

- (void)setMasterSwitchValue
{
    // if all switches are on, set master switch to on; else set master switch to off
    if ([self.calculator areAllSwitchesOn]) {
        [self.masterSwitch setOn:YES animated:YES];
    } else {
        [self.masterSwitch setOn:NO animated:YES];
    }
}


@end
