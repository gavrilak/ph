//
//  DSTestViewController.h
//  psycho
//
//  Created by Dima on 20.02.15.
//  Copyright (c) 2015 bestappstudio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

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

@property (nonatomic, strong) IBOutlet FBLikeControl *appLikeControl;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *currentLabelLeft;

@property (strong, nonatomic) IBOutlet NSLayoutConstraint *heightYesButton;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *widthYesButton;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *beetweenYesButton;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *heightMaybeYesButton;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *widthMaybeYesButton;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *heightNoButton;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *widthNoButton;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *beetweenNoButton;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *heightMaybeNoButton;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *widthMaybeNobutton;

- (IBAction)yesAction:(id)sender;
- (IBAction)noAction:(id)sender;
- (IBAction)maybeYesAction:(id)sender;
- (IBAction)maybeNoAction:(id)sender;

@end
