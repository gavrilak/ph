//
//  DSShareViewController.m
//  psycho
//
//  Created by Lena on 05.03.15.
//  Copyright (c) 2015 bestappstudio. All rights reserved.
//

#import "DSShareViewController.h"
#import "DSTestManager.h"

@interface DSShareViewController ()

@end

@implementation DSShareViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.labelTitle.text = [[DSTestManager sharedManager] getName];
    self.smallText.text = [[DSTestManager sharedManager] getDecsription];
    self.bigText.text = [[DSTestManager sharedManager] getResult];
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"bg.png"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
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
