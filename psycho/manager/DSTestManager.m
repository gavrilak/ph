//
//  DSTestManager.m
//  psycho
//
//  Created by Dima on 20.02.15.
//  Copyright (c) 2015 bestappstudio. All rights reserved.
//

#import "DSTestManager.h"

@implementation DSTestManager


+ (DSTestManager *)sharedManager {
    
    static DSTestManager *manager = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[DSTestManager alloc]init];
    });
    
    return manager;
}

-(void) getTest {
    NSString *filePath = [[NSBundle mainBundle] pathForResource:self.qwName ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:filePath];

    NSError *error;
    self.jsonQuestion = [NSMutableArray arrayWithArray:[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error]];
    filePath = [[NSBundle mainBundle] pathForResource:self.resultName ofType:@"json"];
    data = [NSData dataWithContentsOfFile:filePath];
    self.jsonResult = [NSMutableArray arrayWithArray:[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error]];
}

@end

