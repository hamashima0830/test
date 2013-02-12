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



- (double)neipia:(ViewController*)controller;
- (double)pi:(ViewController*)controller;


@property enum {plus,hiku,waru,kakeru,ic_enzan,sqrt_state,log_10_state,log_e_state,cos_state,sin_state,tan_state,plus_minus} state_enzan;//演算状態を表す状態変数
@property enum {ic,ans,afterans,small,work,point} state;//状態をあらわす状態変数
//@property enum {small_point,normal} point;//小寸点にかかわる状態変数

@property double number;
@property double before;

-(void)calc;
-(double)enzan:(double)n
         aiueo:(double)m;
-(void)clear;


@end
