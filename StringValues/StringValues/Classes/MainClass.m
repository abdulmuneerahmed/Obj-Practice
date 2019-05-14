//
//  MainClass.m
//  StringValues
//
//  Created by 3 Embed on 10/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import "MainClass.h"

static NSString *const kConstant = @"MyConstant";

//NSString *const sConstant = @"MyConstant";
//NSString *const kClick = @"Muneer Constant";

@implementation MainClass
@synthesize employeeData;

NSString *const kClick = @"Muneer Constant";


- (void)data:(TestClasses *)test {
//    NSString *const kClick = @"Muneer ";
    NSLog(@"Employee Name: %@ && Employee Id : %d, Constant: %@",test.name,test.empId,kClick);
}
@end
