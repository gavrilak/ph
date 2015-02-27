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
#import "DSSelectTestViewController.h"
#import  "UIView+Shake.h"


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
    
    if ( UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone )
    {
        if( self.view.frame.size.height > 600 ) {   // if iphone 6
          
            self.heightYesButton.constant += 5;
            self.widthYesButton.constant += 20;
            self.heightNoButton.constant += 5;
            self.widthNoButton.constant += 20;
            self.heightMaybeYesButton.constant += 5;
            self.widthMaybeYesButton.constant += 20;
            self.heightMaybeNoButton.constant += 5;
            self.widthMaybeNobutton.constant += 20;
            self.beetweenYesButton.constant += 10;
            self.beetweenNoButton.constant += 10;

        }
    }
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
  
    
        [self.text setText:text];
        
        [self.text shake:2 withDelta:8  andSpeed:0.1 ];
        [self changeAnimationLabel:self.labelQuestion withText:[NSString stringWithFormat:@"Вопрос %lu",(unsigned long)[DSTestManager sharedManager].indexQW]];
         self.labelCurent.text= [NSString stringWithFormat:@"%lu",(unsigned long)[DSTestManager sharedManager].indexQW];
        
        [self.progress setProgress:(float) [DSTestManager sharedManager].indexQW/[[DSTestManager sharedManager].jsonQuestion count] animated:YES];
        [self.view updateConstraintsIfNeeded];
    
        
            if (self.progress.progress < 0.94){
                [UIView animateWithDuration:0.1f animations:^{
                    self.currentLabelLeft.constant += (self.view.bounds.size.width - self.labelCurent.frame.size.width - self.labelAllQuestion.frame.size.width)/ [[DSTestManager sharedManager].jsonQuestion count];
                    [self.view layoutIfNeeded];
                }];
            }
            else {
                
                self.currentLabelLeft.constant += self.view.bounds.size.width;
                [self.labelAllQuestion setText: [NSString stringWithFormat:@"%lu",(unsigned long)[DSTestManager sharedManager].indexQW]];
            }
        

       
    }
    else{
         [self performSegueWithIdentifier:@"result" sender:self];

    }
}

- (void) changeAnimationLabel:(UILabel*) label withText:(NSString*) text {
    
    [UIView transitionWithView: label
                      duration:0.3f
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        label.text = text;
                        
                        
                    } completion:NULL];

    
}

- (IBAction)yesAction:(id)sender{
    
    [self nextQuestion:@4];

}
- (IBAction)noAction:(id)sender{
    
    [self nextQuestion:@1];

}
- (IBAction)maybeYesAction:(id)sender{
    
    [self nextQuestion:@3];
    
}
- (IBAction)maybeNoAction:(id)sender{
    
    [self nextQuestion:@2];
    
}


@end
