//
//  Doctor.m
//  PlayingDoctor
//
//  Created by Jeffrey C Rosenthal on 3/12/15.
//  Copyright (c) 2015 Jeffreycorp. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor {
    NSMutableArray *_patientList;
}

-(instancetype) initWithName:(NSString *)name AndSpecialization:(NSString *)specialization{
    self = [super init];
    if (self){
        self.name = name;
        self.specialization = specialization;
        _patientList =  [[NSMutableArray alloc] init];
    }
    return self;
}
-(void)addPatient:(Patient *)patient{
    if (patient.healthCard){
        [_patientList addObject:patient];
        NSLog(@"welcome to the surgery %@", patient.name);
    }
        else {
            NSLog(@"please leave, you disgusting tramp");
        }
    }


-(BOOL)isPatient:(Patient *)patient {
    for (Patient *existingPatient in _patientList){
        if (existingPatient == patient){
            return true;
            break;}
        }return false;
    }

-(void)treatPatient:(Patient *)patient {
    BOOL patientCheck = [self isPatient:patient];
    if (patientCheck) {
        NSLog(@"I treat thee!");
        
    }
    else {
        NSLog(@"please leave, you disgusting tramp");
    }

}
    -(void)diagnosis:(Patient *)patient {
        NSLog(@"your %@ does not look good!", patient.ailment);
    }
    
    
    
    
@end
