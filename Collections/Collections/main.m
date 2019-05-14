//
//  main.m
//  Collections
//
//  Created by 3 Embed on 04/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import <Foundation/Foundation.h>



int main(int argc, const char * argv[]) {
    
    // MARK: - Create three NSDate objects
    NSDate *now = [NSDate date];
    NSDate *tommorow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
    NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
    
    
    // MARK: - create a array containing al three
    
    NSMutableArray *numbers = [NSMutableArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",@"7", nil];
    
    NSLog(@"Values: %@",numbers);
    for(NSUInteger i = 0; i < [numbers count];i++){
        if (i % 2 == 0){
            [numbers removeObjectAtIndex:i];
        }

    }
    NSLog(@"Values: %@",numbers);
    NSArray *dateArray = [NSArray arrayWithObjects:now,tommorow,yesterday, nil];
    
    NSArray *values = [NSArray arrayWithObjects:@"Muneer",@"Khadeer",@"Johnny", nil];
    
    NSArray *keys = [NSArray arrayWithObjects:@"1",@"2",@"3", nil];
    
    NSDictionary *dict = [NSDictionary dictionaryWithObject:values forKey:keys];
    
    NSMutableDictionary *mutalabledict = [[NSMutableDictionary alloc] init];
    
    [mutalabledict setObject:@"jio" forKey:@"j"];
    [mutalabledict setObject:@"Airtel" forKey:@"A"];
    
//    NSLog(")

    for (NSString *key in dict) {
        NSLog(@"dictionary value %@",dict[key]);
    }
    
    for (NSString *key in mutalabledict) {
        NSLog(@"Mutualble Dicitonary %@",[mutalabledict objectForKey:key]);
    }
    // MARK: - How Many Dates Are there? -
    NSLog(@"There are %lu dates object at index[0]: %@",[dateArray count],[dateArray objectAtIndex:0]);
    for (NSDate * d in dateArray) {
        NSLog(@"Here is Date:%@",d);
    }
    
    NSLog(@"-----Mutable Type -----");
    
    NSMutableArray *dateMutuable = [NSMutableArray array];
    
    for (NSDate *m in dateArray) {
        [dateMutuable addObject:m];
        NSLog(@"Mutauble array Value: %@",dateMutuable);
    }

    [dateMutuable removeAllObjects];
    NSLog(@"Array Objects:%@",dateMutuable);
    
    return 0;
}
