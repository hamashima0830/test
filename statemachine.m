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

double nn=0;
double mm=0;

- (double)log_e:(ViewController*)controller {
    return log(nn);
}

- (double)log_10:(ViewController*)controller {

    return log10(nn);
}

- (double)neipia:(ViewController*)controller
{
    return M_E;
}

- (double)sqrt:(ViewController*)controller
{
    return sqrt(nn);
}

- (double)pi:(ViewController*)controller
{
    return M_PI;
}

- (double)sin
{
    mm=(nn/360)*2*M_PI;
    return sin(mm);
}
- (double)cos
{
    mm=(nn/360)*2*M_PI;
    return cos(mm);
}

@end
