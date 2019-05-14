//
//  DataServicer.h
//  TableData
//
//  Created by 3 Embed on 08/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "../Model/TableDataCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface DataServicer : NSObject

@property NSMutableArray *cellData;
+(id)sharedInstance;

-(void)loadData;
@end

NS_ASSUME_NONNULL_END
