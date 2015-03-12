//
//  main.m
//  PlayingDoctor
//
//  Created by Jeffrey C Rosenthal on 3/12/15.
//  Copyright (c) 2015 Jeffreycorp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {

        
        Doctor *doogieHowser = [[Doctor alloc] initWithName:@"Doogie Howzer"AndSpecialization:@"Paranoia"];
        Patient *firstPatient = [[Patient alloc] initWithName:@"Mister Jones" AndAge:@30];
        Patient *secondPatient = [[Patient alloc] initWithName:@"Father Time" AndAge:@120];
        [firstPatient visitDoctor:doogieHowser];
        [secondPatient visitDoctor:doogieHowser];
        
        
    }
    return 0;
}
