//
//  DataServicer.m
//  TableData
//
//  Created by 3 Embed on 08/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import "DataServicer.h"

@implementation DataServicer

+(id) sharedInstance {
    static DataServicer *sharedMyInstance = nil;
    @synchronized (self) {
        if(sharedMyInstance == nil)
            sharedMyInstance = [[self alloc] init];
        
    }
    return sharedMyInstance;
}

- (void)loadData {
    
    TableDataCell *object1 = [[TableDataCell alloc] initaddValues:@"screen" addTitle:@"Lorem the thunder Values kilo high rated Person inthe world recorder values and call the service Method Gange Ramp p and piovot click"];
    TableDataCell *object2 = [[TableDataCell alloc] initaddValues:@"screen2" addTitle:@"Lorem the thunder Values kilo high rated Person inthe world recorder values and call the service Method Gange Ramp p and piovot clickLorem the thunder Values kilo high rated Person inthe world recorder values and call the service Method Gange Ramp p and piovot click kilo high rated Person inthe world recorder values and call the service Method Gange Ramp p and piovot click Lorem the thunder Values kilo high rated Person inthe world recorder values and call the service Method Gange Ramp p and piovot click Lorem the thunder Values kilo high rated Person inthe world recorder values and call the service Method Gange Ramp p and piovot click Lorem the thunder Values kilo high rated Person inthe world recorder values and call the service Method Gange Ramp p and piovot click"];
    TableDataCell *object3 = [[TableDataCell alloc] initaddValues:@"screen3" addTitle:@"Lorem the thunder Values kilo high rated Person inthe world recorder values and call the service Method Gange Ramp p and piovot click kilo high rated Person inthe world recorder values and call the service Method Gange Ramp p and piovot click Lorem the thunder Values kilo high rated Person inthe world recorder values and call the service Method Gange Ramp p and piovot click Lorem the thunder Values kilo high rated Person inthe world recorder values and call the service Method Gange Ramp p and piovot click Lorem the thunder Values kilo high rated Person inthe world recorder values and call the service Method Gange Ramp p and piovot click"];
     TableDataCell *object4 = [[TableDataCell alloc] initaddValues:@"screen4" addTitle:@"Lorem the thunder Values kilo high rated Person inthe world recorder values and call the service Method Gange Ramp p and piovot click kilo high rated Person inthe world recorder values and call the service Method Gange Ramp p and piovot click Lorem the thunder Values kilo high rated Person inthe world recorder values and call the service Method Gange Ramp p and piovot click Lorem the thunder Values kilo high rated Person inthe world recorder values and call the service Method Gange Ramp p and piovot click Lorem the thunder Values kilo high rated Person inthe world recorder values and call the service Method Gange Ramp p and piovot click"];
    self.cellData = [NSMutableArray arrayWithObjects:object1,object2,object3,object4, nil];
    //    NSLog(@"values:%@",object3.imageData);
    //    NSLog(@"Count: %lu",(unsigned long)[self.dataObject count]);
    
}
@end
