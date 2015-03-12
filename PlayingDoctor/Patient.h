//
//  Patient.h
//  PlayingDoctor
//
//  Created by Jeffrey C Rosenthal on 3/12/15.
//  Copyright (c) 2015 Jeffreycorp. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Doctor;

@interface Patient : NSObject

@property (strong, nonatomic)NSString *ailment;
@property (strong, nonatomic)NSString *name;
@property (strong, nonatomic)NSNumber *age;
@property (assign, nonatomic)BOOL *healthCard;

-(instancetype)initWithName:(NSString *)name AndAge:(NSNumber *)age;

-(void)demandDrugs:(Doctor *)doctor;
-(void)visitDoctor:(Doctor *)doctor;

@end