//
//  DSLoginViewController.m
//  psycho
//
//  Created by Lena on 25.02.15.
//  Copyright (c) 2015 bestappstudio. All rights reserved.
//

#import <FacebookSDK/FacebookSDK.h>
#import "DSLoginViewController.h"
#import "AppDelegate.h"
#import "DSInfoViewController.h"

@interface DSLoginViewController ()

@end

@implementation DSLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"bg.png"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    self.navigationItem.rightBarButtonItem  = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"but_info.png"] style:UIBarButtonItemStylePlain target:self action: @selector(info)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)facebookTouched:(id)sender
{
    // If the session state is any of the two "open" states when the button is clicked
    if (FBSession.activeSession.state == FBSessionStateOpen
        || FBSession.activeSession.state == FBSessionStateOpenTokenExtended) {
        
        // Close the session and remove the access token from the cache
        // The session state handler (in the app delegate) will be called automatically
        [FBSession.activeSession closeAndClearTokenInformation];
        
        // If the session state is not any of the two "open" states when the button is clicked
    } else {
        // Open a session showing the user the login UI
        // You must ALWAYS ask for public_profile permissions when opening a session
        [FBSession openActiveSessionWithReadPermissions:@[@"public_profile"]
                                           allowLoginUI:YES
                                      completionHandler:
         ^(FBSession *session, FBSessionState state, NSError *error) {
             
             // Retrieve the app delegate
             AppDelegate* appDelegate = [UIApplication sharedApplication].delegate;
             // Call the app delegate's sessionStateChanged:state:error method to handle session state changes
             if ([appDelegate sessionStateChanged:session state:state error:error]) {
                 [self performSegueWithIdentifier:@"next" sender:self];
             }
         }];
    }
}
- (void) info {
   
  [self performSegueWithIdentifier:@"info" sender:self];
    
    
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
