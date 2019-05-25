//
//  ViewController.h
//  TableData
//
//  Created by 3 Embed on 07/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "../View/DataCell.h"
#import "../Model/TableDataCell.h"
#import "../Model/DataServicer.h"
//#import "Data"



@interface MainVC : UIViewController

//@property NSMutableArray *dataObject;
-(void) addSubViews;
-(void) tableDataSetup;
//-(void) loadData;
@end

//TableView Class
@interface MainVC()
@property (nonatomic, strong) UITableView *tableView;
@end
