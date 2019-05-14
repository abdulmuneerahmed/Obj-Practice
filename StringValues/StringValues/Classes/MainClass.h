//
//  MainClass.h
//  StringValues
//
//  Created by 3 Embed on 10/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestClasses.h"
NS_ASSUME_NONNULL_BEGIN


@interface MainClass : NSObject
@property NSMutableArray *employeeData;
extern NSString *const kClick;

-(void)data:(TestClasses *) test;

@end

NS_ASSUME_NONNULL_END
