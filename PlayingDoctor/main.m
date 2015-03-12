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

        
        Doctor *doogieHowser = [[Doctor alloc] initWithName:@"lulz"AndSpecialization:@"Herpes"];
        Patient *plagueRat = [[Patient alloc] initWithName:@"tard" AndAge:@30];
        
        NSLog(@"hello doktor: %@ and patient: %@",doogieHowser.name, plagueRat.name);
        [plagueRat visitDoctor:doogieHowser];
        
        
    }
    return 0;
}
