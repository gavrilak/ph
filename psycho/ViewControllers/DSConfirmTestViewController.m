//
//  DSConfirmTestViewController.m
//  psycho
//
//  Created by Dima on 20.02.15.
//  Copyright (c) 2015 bestappstudio. All rights reserved.
//

#import "DSConfirmTestViewController.h"

@interface DSConfirmTestViewController ()

@end

@implementation DSConfirmTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"bg.png"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    

    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
        self.navigationItem.hidesBackButton = NO;
    self.navigationController.navigationBar.topItem.title = @"";
     [self.navigationController.topViewController setTitle: @"Тест №1"];
 //   self.testName.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"backdrop.png"]];
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
