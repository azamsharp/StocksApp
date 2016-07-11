//
//  StocksTableViewController.h
//  StocksApp
//
//  Created by Mohammad Azam on 7/11/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol StocksTableViewControllerDelegate <NSObject>

-(void) stocksTableViewControllerDidSelectStock:(NSString *) stockName;

@end

@interface StocksTableViewController : UITableViewController
{
    NSMutableArray *_stocks; 
}

@property (nonatomic,weak) id<StocksTableViewControllerDelegate> delegate;

@end
