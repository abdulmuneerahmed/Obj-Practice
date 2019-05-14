//
//  Employee.h
//  StringValues
//
//  Created by 3 Embed on 04/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
//Employee
// MARK: - Inheritance Concept -
@interface Employee : Person
{
    int employeeID;
@private NSString *employeeName;
}
@property int employeeID;
-(id)initWithString:(NSString *)name;
-(int)add:(int)a;
-(float)add:(float)a andNum2:(float)b;
-(NSString *)getemployeeName;
@end
