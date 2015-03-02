//
//  DSSelectTestViewController.m
//  psycho
//
//  Created by Dima on 20.02.15.
//  Copyright (c) 2015 bestappstudio. All rights reserved.
//

#import "DSSelectTestViewController.h"
#import "DSTestManager.h"


@interface DSSelectTestViewController ()
    
@end

@implementation DSSelectTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"bg.png"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    
    if (self.navigationController== nil)
        NSLog(@"sfs");
    //    self navigationController  = [[UINavigationController alloc] initWithRootViewController:self];

    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    self.navigationItem.hidesBackButton = YES;
    
    //[self.navigationController setNavigationBarHidden:NO animated:NO];
}

-(void) viewWillAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
       
      self.navigationController.navigationBar.topItem.title = @"Тесты";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)test1Action:(id)sender{
    [DSTestManager sharedManager].qwName = @"test1";
    [DSTestManager sharedManager].resultName = @"result1";
}

- (IBAction)test2Action:(id)sender{
    [DSTestManager sharedManager].qwName = @"test2";
    [DSTestManager sharedManager].resultName = @"result2";
}

- (IBAction)test3Action:(id)sender{
    [DSTestManager sharedManager].qwName = @"test3";
    [DSTestManager sharedManager].resultName = @"result3";
}
- (IBAction)test4Action:(id)sender{
    [DSTestManager sharedManager].qwName = @"test4";
    [DSTestManager sharedManager].resultName = @"result4";
}

- (IBAction)test5Action:(id)sender{
    [DSTestManager sharedManager].qwName = @"test5";
    [DSTestManager sharedManager].resultName = @"result5";
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
