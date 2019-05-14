//
//  StockHolding.h
//  StringValues
//
//  Created by 3 Embed on 04/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import<Foundation/Foundation.h>

//StockHolding Class
@interface StockHolding : NSObject
{
    float purchasePrice;
    float currentPrice;
    int numberofShares;
}

@property float purchasePrice;
@property float currentPrice;
@property int numberofShares;

-(float)costInDollars;
-(float)valueInDollars;

@end
