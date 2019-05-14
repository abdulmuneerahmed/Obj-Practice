//
//  SampleArray.m
//  Collections
//
//  Created by 3 Embed on 04/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SampleArray.h"

@implementation Sample

-(NSArray *)odds
{
     NSMutableArray *odds = [[NSMutableArray alloc] init];
    int i = 1;
    while ([odds count] < 30) {
        [odds addObject:[NSNumber numberWithInt:i]];
        i += 2;
    }
    return odds;
}

@end
