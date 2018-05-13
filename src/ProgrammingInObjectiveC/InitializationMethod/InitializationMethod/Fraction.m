//
//  Fraction.m
//  InitializationMethod
//
//  Created by neutro code on 11/4/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numerator;
@synthesize denominator;

-(Fraction*) initWith:(int)n :(int)d{
  
    self = [super init];
    
    if(self)
        [self setTo:n over:d];
    
    return self;
}

-(void) print{
    
    //static variable can be local. Since it's local, it only can be accessed by the method where it is defined.
    
    static int printCount;
    
    NSLog(@"The result is : %i / %i",numerator, denominator);
    
    printCount++;
    NSLog(@"The count print is : %i",printCount);
    
    NSLog(@"-------------------");
    
}

-(void) setTo: (int)n over: (int)d {
    numerator = n;
    denominator = d;
}

-(double)convertToNum{
    if(denominator==0)
        return 1.0;
    else
        return (double)numerator/denominator;
}

@end
