//
//  AppDelegate.h
//  psycho
//
//  Created by Dima on 19.02.15.
//  Copyright (c) 2015 bestappstudio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>



static NSString *featureTest2 = @"com.bestappstudio.PsychoTest2";
static NSString *featureTest3 = @"com.bestappstudio.PsychoTest3";
static NSString *featureTest4 = @"com.bestappstudio.PsychoTest4";
static NSString *featureTest5 = @"com.bestappstudio.PsychoTest5";
static NSString *featureTest6 = @"com.bestappstudio.PsychoTest6";

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (BOOL)sessionStateChanged:(FBSession *)session state:(FBSessionState) state error:(NSError *)error;

@end

