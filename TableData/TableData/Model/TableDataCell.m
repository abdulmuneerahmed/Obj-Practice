//
//  TableDataCell.m
//  TableData
//
//  Created by 3 Embed on 08/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import "TableDataCell.h"

@implementation TableDataCell
@synthesize imageData;
@synthesize titleData;

- (id)initaddValues:(NSString *)image addTitle:(NSString *)title {
    imageData = image;
    titleData = title;
//    NSLog(@"%@",imageData);
    return self;
}
@end
