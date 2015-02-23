//
//  DSResultTestViewController.h
//  psycho
//
//  Created by Dima on 20.02.15.
//  Copyright (c) 2015 bestappstudio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DSResultTestViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextView *smallText;
@property (strong, nonatomic) IBOutlet UITextView *bigText;
@property (strong, nonatomic) IBOutlet UILabel *labelTitle;
@property (strong, nonatomic) IBOutlet UIButton *back;
@property (strong, nonatomic) IBOutlet UIButton *forward;
@property (strong, nonatomic) IBOutlet UIButton *share;


- (IBAction)backAction:(id)sender;
- (IBAction)forwardAction:(id)sender;
- (IBAction)shareAction:(id)sender;

@end
