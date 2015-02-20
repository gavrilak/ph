//
//  DStestManager.h
//  psycho
//
//  Created by Dima on 20.02.15.
//  Copyright (c) 2015 bestappstudio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DSTestManager : NSObject

@property (strong, nonatomic) NSMutableArray *jsonQuestion;
@property (strong, nonatomic) NSMutableArray *jsonResult;
@property (strong, nonatomic) NSString *qwName;
@property (strong, nonatomic) NSString *resultName;

+ (DSTestManager *)sharedManager;
void getTest();

@end
