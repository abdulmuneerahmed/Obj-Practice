//
//  TestClasses.h
//  StringValues
//
//  Created by 3 Embed on 10/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TestClasses : NSObject
@property NSString *name;
@property int empId;

-(id)initWithValues:(NSString *)employeeName employeeID:(int)empId;

@end

NS_ASSUME_NONNULL_END
