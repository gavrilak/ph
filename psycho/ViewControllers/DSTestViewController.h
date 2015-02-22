//
//  DSTestViewController.h
//  psycho
//
//  Created by Dima on 20.02.15.
//  Copyright (c) 2015 bestappstudio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DSTestViewController : UIViewController


@property (strong, nonatomic) IBOutlet UIButton *back;
@property (strong, nonatomic) IBOutlet UIButton *yes;
@property (strong, nonatomic) IBOutlet UIButton *no;
@property (strong, nonatomic) IBOutlet UIButton *maybeYes;
@property (strong, nonatomic) IBOutlet UIButton *maybeNo;
@property (strong, nonatomic) IBOutlet UITextView *text;
@property (strong, nonatomic) IBOutlet UILabel *labelQuestion;
@property (strong, nonatomic) IBOutlet UILabel *labelTitle;
@property (strong, nonatomic) IBOutlet UILabel *labelAllQuestion;
@property (strong, nonatomic) IBOutlet UILabel *labelCurent;
@property (strong, nonatomic) IBOutlet UIProgressView *progress;


- (IBAction)yesAction:(id)sender;
- (IBAction)noAction:(id)sender;
- (IBAction)maybeYesAction:(id)sender;
- (IBAction)maybeNoAction:(id)sender;

@end
