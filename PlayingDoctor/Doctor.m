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
    NSArray *_drugList;
}

-(instancetype) initWithName:(NSString *)name AndSpecialization:(NSString *)specialization{
    self = [super init];
    if (self){
        self.name = name;
        self.specialization = specialization;
        _patientList = [[NSMutableArray alloc] init];
        _drugList = [[NSArray alloc] initWithObjects:@"amputation",@"money",@"hopelessness",@"appendectomies", @"needles", nil];
        self.formsOfDeath = [[NSArray alloc] initWithObjects:@"wilson's disease",@"tedium",@"Slappy Ligaments",@"lolagarus",@"Epsom Fever",nil];
        
    }
    return self;
}

-(void)addPatient:(Patient *)patient{
    if (patient.healthCard){
        [_patientList addObject:patient];
        NSLog(@"welcome to the surgery %@", patient.name);
        [self diagnosis:patient];
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

//@"wilson's disease",@"the aids",@"penislessness",@"lolagarus",@"crone's disease"
-(void)treatPatient:(Patient *)patient {
    BOOL patientCheck = [self isPatient:patient];
    if (patientCheck) {
        NSLog(@"I treat thee!");
        for (int i = 0; i < [self.formsOfDeath count]; i++){

            if (patient.dizeezus == self.formsOfDeath[i]){
                [patient addDrugToList:_drugList[i]];
                NSLog(@"Wow that took a lot of %@ to treat your disgusting %@", _drugList[i], self.formsOfDeath[i]);
                break;
        }

            else {

                continue;
        }
        
    }
    }
    else {
        NSLog(@"please leave, you disgusting tramp");
    }

                     }

    -(void)diagnosis:(Patient *)patient {
        NSLog(@"your %@ does not look good!", patient.dizeezus);
        [self treatPatient:patient];
        patient.dizeezus = NULL;
        NSLog(@"oh look ur heald lulz");
    }


    
    
    
@end
