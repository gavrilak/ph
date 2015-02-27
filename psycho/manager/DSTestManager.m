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
    self.indexQW = 0;
    self.indexResult = 0;
    NSLog(@"%d",[self.jsonQuestion count] );
    self.resultArray = [NSMutableArray array];
    //[  self.jsonQuestion removeObjectsInRange:NSMakeRange(15, 69) ];
}


-(BOOL) backResult {
    if (self.indexResult >= 1){
        self.indexResult--;
        return YES;
    }
    else
        return NO;
}
-(BOOL) nextResult{
    if (self.indexResult != [self.jsonResult count]-1){
        self.indexResult++;
        return  YES;
    }
    else{
        return NO;
    }
}

-(NSString*)  getName {
    return [[self.jsonResult objectAtIndex:self.indexResult] objectForKey:@"Class"];
}
-(NSString*)  getDecsription {
    return [[self.jsonResult objectAtIndex:self.indexResult] objectForKey:@"Class1"];

}
-(NSString*)  getResult {
    NSString* result = [[self.jsonResult objectAtIndex:self.indexResult] objectForKey:@"QwID"];
    NSArray *array = [result componentsSeparatedByString:@","];
    NSInteger bal = 0;
    for (NSString* id in array ) {
        if ([id integerValue]-1  <  [self.jsonQuestion count] )
            bal+= [[self.resultArray objectAtIndex:([id integerValue] -1)] integerValue];
        else
            NSLog(@"invalid id ");
    }
    switch (bal) {
         
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
            result = [[self.jsonResult objectAtIndex:self.indexResult] objectForKey:@"Res1"];
            break;
            
        case 6:
        case 7:
        case 8:
        case 9:
            
            result = [[self.jsonResult objectAtIndex:self.indexResult] objectForKey:@"Res2"];
            break;
        case 10:
        case 11:
        case 12:
            
            result = [[self.jsonResult objectAtIndex:self.indexResult] objectForKey:@"Res3"];
            break;
    }
    
    return result;

}

-(NSString*) nextQuestion:(NSNumber* )result{
    NSString* qw;
    if (self.indexQW > 0){
        [self.resultArray  addObject:result];
    }
    if (self.indexQW < [self.jsonQuestion count]){
        qw = [[self.jsonQuestion objectAtIndex:self.indexQW] objectForKey:@"QW"];
        self.indexQW++;
    }
    else
        qw = nil;
    return qw;
}

@end

