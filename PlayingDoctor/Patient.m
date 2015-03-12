//
//  Patient.m
//  PlayingDoctor
//
//  Created by Jeffrey C Rosenthal on 3/12/15.
//  Copyright (c) 2015 Jeffreycorp. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"
@implementation Patient
-(instancetype)initWithName:(NSString *)name AndAge:(NSNumber *)age {
    self = [super init];
    if (self){
        self.name = name;
        self.age = age;
    }
    return self;
}

-(void)demandDrugs:(Doctor *)doctor{
    
}


-(void)visitDoctor:(Doctor *)doctor{
    [doctor addPatient:self];
    [self complain];
    
}


@end
