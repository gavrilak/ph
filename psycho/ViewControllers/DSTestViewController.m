//
//  DSTestViewController.m
//  psycho
//
//  Created by Dima on 20.02.15.
//  Copyright (c) 2015 bestappstudio. All rights reserved.
//

#import "DSTestViewController.h"
#import "DSTestManager.h"

@interface DSTestViewController ()

@end

@implementation DSTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"bg.png"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    
    self.labelAllQuestion.text = [NSString stringWithFormat:@"%lu" ,(unsigned long)[[DSTestManager sharedManager].jsonQuestion count]];
    [self nextQuestion];
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

- (void) nextQuestion {
    
    [self.text setText:[[DSTestManager sharedManager] nextQuestion]];
    self.labelQuestion.text = [NSString stringWithFormat:@"Вопрос %d",[DSTestManager sharedManager].indexQW];
    [self.progress setProgress:(float) [DSTestManager sharedManager].indexQW/[[DSTestManager sharedManager].jsonQuestion count]];
    [self.labelCurent setText: [NSString stringWithFormat:@"%d",[DSTestManager sharedManager].indexQW]];
   
}
- (IBAction)yesAction:(id)sender{
    
    [self nextQuestion];

}
- (IBAction)noAction:(id)sender{
    
    [self nextQuestion];

}
- (IBAction)maybeYesAction:(id)sender{
    
    [self nextQuestion];
    
}
- (IBAction)maybeNoAction:(id)sender{
    
    [self nextQuestion];
    
}


@end
