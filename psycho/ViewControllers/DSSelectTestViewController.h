//
//  DSSelectTestViewController.h
//  psycho
//
//  Created by Dima on 20.02.15.
//  Copyright (c) 2015 bestappstudio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DSSelectTestViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *test1;
@property (strong, nonatomic) IBOutlet UIButton *test2;
@property (strong, nonatomic) IBOutlet UIButton *test3;
@property (strong, nonatomic) IBOutlet UIButton *test4;
@property (strong, nonatomic) IBOutlet UIButton *test5;

- (IBAction)test1Action:(id)sender;
- (IBAction)test2Action:(id)sender;
- (IBAction)test3Action:(id)sender;
- (IBAction)test4Action:(id)sender;
- (IBAction)test5Action:(id)sender;

@end
