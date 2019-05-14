//
//  TableDataCell.h
//  TableData
//
//  Created by 3 Embed on 08/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableDataCell : NSObject {
    NSString *imageData;
    NSString * titleData;
}
@property NSString *imageData;
@property NSString * titleData;

-(id)initaddValues:(NSString *)image addTitle:(NSString *)title;
@end

NS_ASSUME_NONNULL_END

