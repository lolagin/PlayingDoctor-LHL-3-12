//
//  Patient.m
//  PlayingDoctor
//
//  Created by Jeffrey C Rosenthal on 3/12/15.
//  Copyright (c) 2015 Jeffreycorp. All rights reserved.
//

#include <stdlib.h>
#import "Patient.h"
#import "Doctor.h"



@implementation Patient {
    NSArray *_formsOfDeath;
}


-(instancetype)initWithName:(NSString *)name AndAge:(NSNumber *)age {
    self = [super init];
    if (self){
        
_formsOfDeath = [[NSArray alloc] initWithObjects:@"wilson's disease",@"tedium",@"Slappy Ligaments",@"lolagarus",@"Epsom Fever",nil];
        self.name = name;
        self.age = age;
        self.healthCard = TRUE;
        int randomDeath = arc4random_uniform(5);
        self.dizeezus = _formsOfDeath[randomDeath];
        
    }
    return self;
}

-(void)addDrugToList:(NSString *)drugz {
    [self.drugList addObject:drugz];
}
-(void)demandDrugs:(Doctor *)doctor{

}


-(void)visitDoctor:(Doctor *)doctor{
    [doctor addPatient:self];
//    [self complain];
    
}


@end
