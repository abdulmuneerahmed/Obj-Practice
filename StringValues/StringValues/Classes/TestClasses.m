//
//  TestClasses.m
//  StringValues
//
//  Created by 3 Embed on 10/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import "TestClasses.h"

@implementation TestClasses

@synthesize name;
@synthesize empId;

- (id)initWithValues:(NSString *)employeeName employeeID:(int)eId {
    name = employeeName;
    empId = eId;
    return self;
}

@end
