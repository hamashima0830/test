//
//  statemachine.m
//  test
//
//  Created by 濱島　伸太郎 on 13/01/17.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import "statemachine.h"
#import "ViewController.h"

@implementation statemachine

//@synthesize state;

double n;
double m;

- (double)log_e:(ViewController*)controller {
    return log(n);
}

- (double)log_10:(ViewController*)controller {

    return log10(n);
}

- (double)neipia:(ViewController*)controller
{
    return M_E;
}

- (double)sqrt:(ViewController*)controller
{
    return sqrt(n);
}

- (double)pi:(ViewController*)controller
{
    return M_PI;
}

- (double)sin:(ViewController*)controller
{
    m=(n/360)*2*M_PI;
    return sin(m);
}
- (double)cos:(ViewController*)controller
{
    m=(n/360)*2*M_PI;
    return cos(m);
}
- (double)tan:(ViewController*)controller
{
    m=(n/360)*2*M_PI;
    return tan(m);
}

double before = 0.0;
-(double)calc:(double)number{
    
    
    switch ([self state]) {
        case ic:
            [self setState:work];
            NSLog(@"ic");
            break;
            
        case work:
            NSLog(@"work");
            number=before*10+number;
            break;
            
            
        default:
            NSLog(@"default");
            break;
    }
    before = number;
    NSLog(@"number:%f",number);
    setText:[ NSString stringWithFormat:@"%g",number];
    n=number;
    return number;
    
    NSLog(@"number:%f",n);
}


@end
