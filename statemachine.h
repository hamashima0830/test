//
//  statemachine.h
//  test
//
//  Created by 濱島　伸太郎 on 13/01/17.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ViewController;
@interface statemachine : NSObject



- (double)log_e:(ViewController*)controller;
- (double)log_10:(ViewController*)controller;
- (double)neipia:(ViewController*)controller;
- (double)sqrt:(ViewController*)controller;
- (double)pi:(ViewController*)controller;
- (double)sin:(ViewController*)controller;
- (double)cos:(ViewController*)controller;
- (double)tan:(ViewController*)controller;

@property enum {plus,hiku,waru,kakeru,ic_enzan} state_enzan;
@property enum {ic,ans,afterans,small,work} state;

@end
