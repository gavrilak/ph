//
//  DStestManager.h
//  psycho
//
//  Created by Dima on 20.02.15.
//  Copyright (c) 2015 bestappstudio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DSTestManager : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSMutableArray *jsonQuestion;
@property (strong, nonatomic) NSMutableArray *jsonResult;
@property (strong, nonatomic) NSMutableArray *resultArray;
@property (strong, nonatomic) NSString *qwName;
@property (strong, nonatomic) NSString *resultName;
@property (assign, nonatomic) NSUInteger indexQW;
@property (assign, nonatomic) NSUInteger indexResult;

+ (DSTestManager *)sharedManager;

-(void) getTest;
-(NSString*) nextQuestion:(NSNumber*) result;
-(NSString*)  getResult ;
-(NSString*)  getName ;
-(NSString*)  getDecsription ;
-(BOOL) backResult ;
-(BOOL) nextResult;

@end
