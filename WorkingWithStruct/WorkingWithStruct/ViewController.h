//
//  ViewController.h
//  WorkingWithStruct
//
//  Created by 3 Embed on 15/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//



#import <UIKit/UIKit.h>

struct Students {
    int rollno;
    NSString *name;
    NSString *branch;
    NSString *batch;
};

@interface ViewController : UIViewController
-(void)printStub:(struct Students) student;

@end

