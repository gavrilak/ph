//
//  AppDelegate.h
//  psycho
//
//  Created by Dima on 19.02.15.
//  Copyright (c) 2015 bestappstudio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (BOOL)sessionStateChanged:(FBSession *)session state:(FBSessionState) state error:(NSError *)error;

@end

