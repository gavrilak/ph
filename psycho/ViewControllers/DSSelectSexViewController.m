//
//  DSSelectSexViewController.m
//  psycho
//
//  Created by Dima on 20.02.15.
//  Copyright (c) 2015 bestappstudio. All rights reserved.
//

#import "DSSelectSexViewController.h"
#import "DSTestManager.h"
#import "AppDelegate.h"

@interface DSSelectSexViewController ()

@end

@implementation DSSelectSexViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"bg.png"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    FBLikeControl* appLikeControl = [[FBLikeControl alloc] init];
    appLikeControl.likeControlStyle = FBLikeControlStyleButton;
     appLikeControl.likeControlAuxiliaryPosition =  FBLikeControlAuxiliaryPositionTop;
    appLikeControl.objectID = @"https://www.facebook.com/pages/Top50Ringtones/431758676974661";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:appLikeControl];
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    self.navigationController.navigationBar.topItem.title = @"";
    [self.navigationController.topViewController setTitle: @""];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)maleAction:(id)sender {
    [DSTestManager sharedManager].resultName = [[DSTestManager sharedManager].resultName stringByAppendingString:@"m"];
    [[DSTestManager sharedManager] getTest];
}
- (IBAction)femaleAction:(id)sender {
    [DSTestManager sharedManager].resultName = [[DSTestManager sharedManager].resultName stringByAppendingString:@"f"];
    [[DSTestManager sharedManager] getTest];
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
