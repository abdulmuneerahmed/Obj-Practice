//
//  main.m
//  StringValues
//
//  Created by 3 Embed on 03/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Person.h"
//#import "StockHolding.h"
#import "Employee.h"
#import "Classes/MainClass.h"
#import "Classes/NSString+Counting.h"
// Enum
enum AnimalNames{
    cat,
    dog,
    rat,
    Leopard,
    Lion
};

//Function
void someFunction(){
    NSLog(@"Printed");
}

void arrayFunction(){
    int n[10];
    
    for(int i=0;i<10;i++){
        n[i] = i + 100;
    }
    
    for(int i=0;i<10;i++){
        NSLog(@"Element[%d]:%d",i,n[i]);
    }
}

void twoDimensionalArray(){
    int n[5][2];
    
    for(int i=0;i<5;i++){
        for(int j=0;j<2;j++){
            n[i][j] = i+j+100;
            NSLog(@"Element[%d][%d]: %d",i,j,n[i][j]);
        }
    }
    
}

int main(int argc, const char * argv[]) {
    //Strings in Objective C
//    NSString *animalName = @"dog";
    
    // Variables in Objective C
//    int speed = 10;
//    bool calculate = true;
//    float floatValue = 20.2;
//    double animalapp = 1000.2356;
//    int addition = (100 + 200 - 100 + 400) /200;
//    animalName = @"Cat";
//    NSLog(@"the animal name is: %@", animalName);
//    NSLog(@"%d,%f,%f,%i,Addition Value : %d",speed,floatValue,animalapp,calculate,addition);
//    bool check = true;
    
    //Condition Statement
//    if (check) {
//        NSLog(@"checking condition: %i",check);
//    }
    
//    NSLog(@"Cat : %d",cat);
    
//    int animalNameValue = Lion;
    //Switch
//    switch (animalNameValue) {
//        case cat:
//            NSLog(@"Cat");
//            break;
//        case Lion:
//            NSLog(@"Lion");
//            break;
//        case dog:
//            NSLog(@"dog");
//            break;
//        case Leopard:
//            NSLog(@"Leopard");
//            break;
//
//        default:
//            break;
//    }
    
//    someFunction();
    
    //Arrays
    
//    int integers[] = {10,20,52,24,10,65,23,58};
    
//    NSArray *animals = @[@1,@2,@3,@4];
//    arrayFunction();
//    twoDimensionalArray();
    
    
//    Person *person = [[Person alloc] init];
//
//    [person setWeightInKilos:16];
//    [person setHeightInMeters:2];
//
//    float result = [person bodyMassIndex];
//
//    NSLog(@"Person(%d,%f) has a BMI of %f",[person weightInKilos],[person heightInMeters],result);
    
//    StockHolding *stock = [[StockHolding alloc] init];
//
//    [stock setCurrentPrice:2];
//    [stock setNumberofShares:4];
//
//    NSLog(@"Stock Holding %f",[stock valueInDollars]);
    
    NSString * name = @"AmuneerIOjkiop";
    
    Employee *employee = [[Employee alloc] initWithString:@"Muneer"];
    
    [employee setHeightInMeters:2];
    [employee setWeightInKilos:16];
    [employee setEmployeeID:1];
//    [employee ]
    
    int additionResult = [employee add:8];
    float floatAddition = [employee add:2.0 andNum2:5.0];
    
    float resultValue = [employee bodyMassIndex];
    NSLog(@"Addition of Two Variables: intValue = %d, floatValue = %f Checking:",additionResult,floatAddition);
    NSLog(@"EmployeeName:%@ EmployeeId: %d And Person(%f,%d) has a BMI of %f",[employee getemployeeName],[employee employeeID],[employee heightInMeters],[employee weightInKilos],resultValue);
    
    TestClasses *object1 = [[TestClasses alloc] initWithValues:@"Muneer" employeeID:102];
    TestClasses *object2 = [[TestClasses alloc] initWithValues:@"Jonny" employeeID:104];
    
    MainClass *mainClass = [[MainClass alloc] init];
    NSLog(@"Constants:%@",kClick);
    
    mainClass.employeeData = [[NSMutableArray alloc] initWithObjects:object1,object2, nil];
    for (int i=0; i<[mainClass.employeeData count]; i++) {
        [mainClass data:[mainClass.employeeData objectAtIndex:i]];
    }
    
    NSLog(@"Vowel Count in Name:%d",name.vowelCount);
    
    return 0;
}


