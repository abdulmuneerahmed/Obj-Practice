//
//  Person.m
//  StringValues
//
//  Created by 3 Embed on 03/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@implementation Person

@synthesize heightInMeters, weightInKilos;

//-(float)heightInMeters
//{
//    return heightInMeters;
//}
//
//-(void)setHeightInMeters:(float)h
//{
//    heightInMeters = h;
//}
//
//-(int)weightINkilos
//{
//    return weightInKilos;
//}
//
//-(void)setweightInKilos:(int)w
//{
//    weightInKilos = w;
//}

-(float)bodyMassIndex
{
    float h = [self heightInMeters];
    checking = 10;
    return [self weightInKilos] / (h * h);
}

@end


