//
//  Person.h
//  StringValues
//
//  Created by 3 Embed on 03/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import<Foundation/Foundation.h>
@interface Person : NSObject
{
    float heightInMeters;
    int weightInKilos;
 @protected int checking;
}

//-(float)heightInMeters;
//-(void)setHeightInMeters:(float)h;
@property float heightInMeters;
//-(int)weightINkilos;
//-(void)setweightInKilos:(int)w;
@property int weightInKilos;


-(float)bodyMassIndex;
@end



