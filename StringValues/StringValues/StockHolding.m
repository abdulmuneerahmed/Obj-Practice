//
//  StockHolding.m
//  StringValues
//
//  Created by 3 Embed on 04/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"
//StockHolding
@implementation StockHolding

@synthesize purchasePrice, currentPrice, numberofShares;

-(float)costInDollars
{
    return [self purchasePrice] * [self numberofShares];
}

-(float)valueInDollars
{
    return [self currentPrice] * [self numberofShares];
}

@end
