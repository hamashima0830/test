//
//  statemachine.h
//  test
//
//  Created by 濱島　伸太郎 on 13/01/17.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ViewController;
@interface statemachine : NSObject{

}



- (double)log_e:(ViewController*)controller;
- (double)log_10:(ViewController*)controller;
- (double)neipia:(ViewController*)controller;
- (double)pi:(ViewController*)controller;
- (double)sin:(ViewController*)controller;
- (double)cos:(ViewController*)controller;
- (double)tan:(ViewController*)controller;

@property enum {plus,hiku,waru,kakeru,ic_enzan,sqrt_state,log_10_state,log_e_state,cos_state,sin_state,tan_state} state_enzan;
@property enum {ic,ans,afterans,small,work} state;
@property double number;
@property double before;

-(void)calc;
-(double)enzan:(double)n
         aiueo:(double)m;
-(void)clear;


@end
