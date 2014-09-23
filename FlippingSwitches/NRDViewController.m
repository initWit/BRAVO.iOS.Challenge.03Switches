//
//  NRDViewController.m
//  FlippingSwitches
//
//  Created by Ben Dolmar on 12/9/13.
//  Copyright (c) 2013 Ben Dolmar. All rights reserved.
//

#import "NRDViewController.h"
#import "UISwitch+NRDForcedAnimation.h"

@interface NRDViewController ()
@property (nonatomic, strong) IBOutletCollection(UISwitch) NSArray *childSwitches;
@property (nonatomic, weak) IBOutlet UISwitch *masterSwitch;
@end

@implementation NRDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}


#pragma mark Action Methods

- (IBAction)flippedChildSwitch
{
    // use sum collection operator to provide calculated results
    NSInteger numberOfSwitchesTurnedOn = [[self.childSwitches valueForKeyPath:@"@sum.on"] intValue];
    NSInteger totalNumberOfChildSwitches = self.childSwitches.count;
    
    // if all switches are on, set master switch to on; else set master switch to off
    if (numberOfSwitchesTurnedOn == totalNumberOfChildSwitches) {
        [self.masterSwitch setOn:YES animated:YES];
    } else {
        [self.masterSwitch setOn:NO animated:YES];
    }
}


- (IBAction)flippedMasterSwitch
{
    NSNumber *masterSwitchValueObject = [NSNumber numberWithBool:self.masterSwitch.on];
    
    // send all the child switches to be animated
    [self.childSwitches makeObjectsPerformSelector:@selector(animateSwitchBasedOnValue:) withObject:masterSwitchValueObject];
}


@end
