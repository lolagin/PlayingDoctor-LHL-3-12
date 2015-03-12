//
//  Doctor.h
//  PlayingDoctor
//
//  Created by Jeffrey C Rosenthal on 3/12/15.
//  Copyright (c) 2015 Jeffreycorp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject

@property (strong, nonatomic)NSString *name;
@property (strong, nonatomic)NSString *specialization;
@property (strong, nonatomic)NSArray *formsOfDeath;

-(void)treatPatient:(Patient *)patient;
-(instancetype) initWithName:(NSString *)name AndSpecialization:(NSString *)specialization;
-(void)addPatient:(Patient *)patient;
-(void)diagnosis:(Patient *)patient;


@end
