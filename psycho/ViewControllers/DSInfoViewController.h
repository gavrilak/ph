//
//  DSInfoViewController.h
//  psycho
//
//  Created by Lena on 26.02.15.
//  Copyright (c) 2015 bestappstudio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DSInfoViewController : UIViewController <UITableViewDataSource , UITableViewDelegate >


- (IBAction)backAction:(id)sender;

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UIButton *buttonBack;

@end
