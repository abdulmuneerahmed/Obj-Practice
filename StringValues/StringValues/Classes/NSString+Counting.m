//
//  NSString+Counting.m
//  StringValues
//
//  Created by 3 Embed on 10/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import "NSString+Counting.h"

@implementation NSString (Counting)

- (int)vowelCount {
    NSCharacterSet *charSet = [NSCharacterSet characterSetWithCharactersInString:@"aeiouyAEIOUY"];
    NSInteger count = [self length];
    int sum = 0;
    for (int i = 0; i < count; i++) {
        unichar c = [self characterAtIndex:i];
        if([charSet characterIsMember:c]){
            sum ++;
        }
    }
    return sum;
}

@end
