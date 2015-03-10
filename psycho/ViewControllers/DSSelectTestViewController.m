//
//  DSSelectTestViewController.m
//  psycho
//
//  Created by Dima on 20.02.15.
//  Copyright (c) 2015 bestappstudio. All rights reserved.
//

#import "DSSelectTestViewController.h"
#import "DSTestManager.h"


static NSString *featureTest2 = @"com.bestappstudio.PsychoTest2";
static NSString *featureTest3 = @"com.bestappstudio.PsychoTest3";
static NSString *featureTest4 = @"com.bestappstudio.PsychoTest4";
static NSString *featureTest5 = @"com.bestappstudio.PsychoTest5";
static NSString *featureTest6 = @"com.bestappstudio.PsychoTest6";

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
    
    if ([self checkPurchaise]) {
        
        [DSTestManager sharedManager].qwName = @"test2";
        [DSTestManager sharedManager].resultName = @"result2";
        [self performSegueWithIdentifier:@"confirm" sender:self];

    }
}

- (IBAction)test3Action:(id)sender{
    
    if ([self checkPurchaise]) {
        
        [DSTestManager sharedManager].qwName = @"test3";
        [DSTestManager sharedManager].resultName = @"result3";
        [self performSegueWithIdentifier:@"confirm" sender:self];
        
    }

}
- (IBAction)test4Action:(id)sender{
    
    if ([self checkPurchaise]) {
        
        [DSTestManager sharedManager].qwName = @"test4";
        [DSTestManager sharedManager].resultName = @"result4";
        [self performSegueWithIdentifier:@"confirm" sender:self];
        
    }
}

- (IBAction)test5Action:(id)sender{
    
    if ([self checkPurchaise]) {
    
        [DSTestManager sharedManager].qwName = @"test5";
        [DSTestManager sharedManager].resultName = @"result5";
        [self performSegueWithIdentifier:@"confirm" sender:self];
    }
}

- (IBAction)test6Action:(id)sender{
    
    if ([self checkPurchaise]) {
        
        [DSTestManager sharedManager].qwName = @"test6";
        [DSTestManager sharedManager].resultName = @"result6";
        [self performSegueWithIdentifier:@"confirm" sender:self];
    }
}

#pragma mark - Purchaise

-(BOOL)checkPurchaise {
    
    NSString* purchaise;
    NSString* purchaiseID;
    bool isPurchaise;
    CGRect rect;
    /* if ([self.song.lang isEqualToString:@"eng"]){
     purchaise = @"isPurchaiseEng";
     purchaiseID = featureEngID;
     }
     else{
     purchaise = @"isPurchaiseRus";
     purchaiseID = featureRusID;
     }
     
     NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
     isPurchaise =[defaults objectForKey:purchaise];
     NSLog(@"%f",self.view.bounds.size.height);
     if (isPurchaise != YES ){
     rect = self.view.bounds;
     rect.size.height = rect.size.height+200.f;
     [[UIApplication sharedApplication] beginIgnoringInteractionEvents];
     [GMDCircleLoader setOnView:self.view withRect:rect animated:YES];
     self.purchaes.productID = purchaiseID;
     
     return NO;
     }
     else
     return YES;*/
    return YES;
    
}

/*-(void)unlockFeatureForID:(NSNumber*) number {
    
    NSString* purchaise;
    NSString* purchaiseTermin;
    NSString* purchaiseDate;
    if (date != nil){
        if ([self.song.lang isEqualToString:@"eng"]){
            purchaise = @"isPurchaiseEng";
            purchaiseTermin = @"isPurchaiseTerminEng";
            purchaiseDate = @"isPurchaiseDateEng";
        }
        else{
            purchaise = @"isPurchaiseRus";
            purchaiseTermin = @"isPurchaiseTerminRus";
            purchaiseDate = @"isPurchaiseDateRus";
        }
        
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults removeObjectForKey:purchaise];
        [defaults removeObjectForKey:purchaiseTermin];
        [defaults removeObjectForKey:purchaiseDate];
        [defaults synchronize];
        
        NSDateFormatter *objDateFormatter = [[NSDateFormatter alloc] init];
        [objDateFormatter setDateFormat:@"dd.MM.yyyy"];
        NSString* dateStr = [objDateFormatter stringFromDate:date];
        NSNumber* term = @1;
        
        [defaults setObject:dateStr forKey:purchaiseDate];
        [defaults setObject:term forKey:purchaiseTermin];
        [defaults setBool:YES forKey:purchaise];
        [defaults synchronize];
        
        // UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Сообщение" message:@"Ваши покупки успешно завершены" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        //   [alert show];
        [self downloadAction:nil];
    }
    [[UIApplication sharedApplication] endIgnoringInteractionEvents];
    [GMDCircleLoader hideFromView:self.view animated:YES];
    
    
} */

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
