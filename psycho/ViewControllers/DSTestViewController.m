//
//  DSTestViewController.m
//  psycho
//
//  Created by Dima on 20.02.15.
//  Copyright (c) 2015 bestappstudio. All rights reserved.
//

#import "DSTestViewController.h"
#import "DSResultTestViewController.h"
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
    [self nextQuestion:@0];
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

- (void) nextQuestion:(NSNumber *) result {
    
    NSString *text = [[DSTestManager sharedManager] nextQuestion:result];
    if (text!=nil) {
        [UIView transitionWithView:self.text
                      duration:0.3f
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        [self.text setText:text];

                    } completion:NULL];
    
        [UIView transitionWithView: self.labelQuestion
                      duration:0.3f
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        self.labelQuestion.text = [NSString stringWithFormat:@"Вопрос %d",[DSTestManager sharedManager].indexQW];

                        
                    } completion:NULL];
    
        [self.progress setProgress:(float) [DSTestManager sharedManager].indexQW/[[DSTestManager sharedManager].jsonQuestion count] animated:YES];
        [self.labelCurent setText: [NSString stringWithFormat:@"%d",[DSTestManager sharedManager].indexQW]];
      //  NSLog (@"%f, %f",self.labelAllQuestion.frame.size.width,self.labelAllQuestion.frame.origin.x );
      //  if  (self.currentLabelLeft.constant + self.labelCurent.frame.size.width < self.labelAllQuestion.frame.origin.x - self.labelAllQuestion.frame.size.width) {
        if (self.progress.progress < 0.94){
            self.currentLabelLeft.constant += (self.view.bounds.size.width - self.labelCurent.frame.size.width - self.labelAllQuestion.frame.size.width)/ [[DSTestManager sharedManager].jsonQuestion count];
        }
        else {
            self.currentLabelLeft.constant += self.view.bounds.size.width;
            [self.labelAllQuestion setText: [NSString stringWithFormat:@"%d",[DSTestManager sharedManager].indexQW]];
        }
    }
    else{
         [self performSegueWithIdentifier:@"result" sender:self];

    }
}
- (IBAction)yesAction:(id)sender{
    
    [self nextQuestion:@1];

}
- (IBAction)noAction:(id)sender{
    
    [self nextQuestion:@2];

}
- (IBAction)maybeYesAction:(id)sender{
    
    [self nextQuestion:@3];
    
}
- (IBAction)maybeNoAction:(id)sender{
    
    [self nextQuestion:@4];
    
}


@end
