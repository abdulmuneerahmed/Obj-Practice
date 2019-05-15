//
//  ViewController.m
//  WorkingWithStruct
//
//  Created by 3 Embed on 15/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = UIColor.whiteColor;
    struct Students std1;
    struct Students std2;
    std1.rollno = 12;
    std1.name = @"Muneer";
    std1.batch = @"L BAtch";
    std1.branch = @"LEO";
    std2.rollno = 13;
    std2.name = @"John";
    std2.batch = @"MyBatch";
    std2.branch = @"LEOLe";
    NSLog(@"Student1");
    [self printStub:std1];
    NSLog(@"Student2");
    [self printStub:std2];
}

- (void)printStub:(struct Students)student {
    
    NSLog(@"RollNo:%d,Name:%@,Branch:%@,Batch:%@",student.rollno,student.name,student.branch,student.batch);
}
@end
