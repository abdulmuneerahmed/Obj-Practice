//
//  Employee.m
//  StringValues
//
//  Created by 3 Embed on 04/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
//Employee

@implementation Employee
@synthesize employeeID;

-(id)initWithString:(NSString *)name
{
    employeeName = name;
    checking = 2;
    return self;
}

// MARK: - Method overriding with Super Keyword -
-(float)bodyMassIndex
{
    float doubleBMI = [super bodyMassIndex];
    return doubleBMI * 2.0;
}

// MARK: - Similar Like Method Overloading -
-(int)add:(int)a
{
    return a + checking;
}

-(float)add:(float)a andNum2:(float)b
{
    return a + b;
}

-(NSString *)getemployeeName
{
    return employeeName;
}

@end
