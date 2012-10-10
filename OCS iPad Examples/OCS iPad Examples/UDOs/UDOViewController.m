//
//  UDOViewController.m
//  Objective-C Sound Example
//
//  Created by Aurelius Prochazka on 6/23/12.
//  Copyright (c) 2012 Hear For Yourself. All rights reserved.
//

#import "UDOViewController.h"
#import "Helper.h"
#import "OCSManager.h"

@interface UDOViewController () {
    UDOInstrument *udoInstrument;
}
@end

@implementation UDOViewController
- (void)viewDidLoad
{
    [super viewDidLoad];

    OCSOrchestra *orch = [[OCSOrchestra alloc] init];    
    udoInstrument = [[UDOInstrument alloc] init];
    [orch addInstrument:udoInstrument];
    [[OCSManager sharedOCSManager] runOrchestra:orch];
}

- (IBAction)hit1:(id)sender {
    udoInstrument.frequency.value = 440.0f;
    [udoInstrument playForDuration:1.0];
}

- (IBAction)hit2:(id)sender { 
    [udoInstrument.frequency randomize];
    [udoInstrument playForDuration:1.0];
}


@end
