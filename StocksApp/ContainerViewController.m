//
//  ContainerViewController.m
//  StocksApp
//
//  Created by Mohammad Azam on 7/11/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import "ContainerViewController.h"

@interface ContainerViewController ()

@end

@implementation ContainerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *childControllers = self.childViewControllers;
    
    StocksTableViewController *stocksTableViewController = (StocksTableViewController *) childControllers.firstObject;
    
    StockDetailsViewController *stockDetailsViewController = (StockDetailsViewController *) childControllers.lastObject;
    
    stocksTableViewController.delegate = stockDetailsViewController;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
