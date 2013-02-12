//
//  statemachine.m
//  test
//
//  Created by 濱島　伸太郎 on 13/01/17.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import "statemachine.h"

@implementation statemachine

@synthesize state;
@synthesize state_enzan;
@synthesize number;
@synthesize before;
//@synthesize point;

double n;
double m;
double p;



-(double)enzan:(double)n
         aiueo:(double)m
{
    
    switch ([self state_enzan]) {
        case plus:
            n=m+n;
            break;
            
        case hiku:
            n=m-n;
            break;
            
        case waru:
            n=m/n;
            break;
            
        case kakeru:
            n=m*n;
            break;
        
        case plus_minus:
            n=0-m;
            break;
            
        case sqrt_state:
            n=sqrt(m);
            break;
            
        case log_10_state:
            n=log10(m);
            break;
            
        case log_e_state:
            n=log(m);
            break;
            
        case sin_state:
            n=(m/360)*2*M_PI;
            n=sin(n);
            break;
            
        case cos_state:
            n=(m/360)*2*M_PI;
            n=cos(n);
            break;
            
        case tan_state:
            n=(m/360)*2*M_PI;
            n=tan(n);
            break;
            
        default:
            break;
            
            [self setState:ic];
            [self setState_enzan:ic_enzan];
    }
    
    
    
    return n;
    
}



double before = 0.0;

-(void)calc{
    NSLog(@"state");
    switch ([self state]) {
        case ic:
            [self setState:work];
             NSLog(@"ic");
            break;
            
        case work:
            NSLog(@"work");
            number=before*10+number;
            break;
            
        case point:
            NSLog(@"point");
            p++;
            number= m + number/pow(10,p );
            m=number;
            NSLog(@"ans_m_point:%f",m);
            break;

            
        default:
            NSLog(@"default");
            break;
    }
    before = number;
    //setText:[ NSString stringWithFormat:@"%g",n];
    n=number;
  //  return number;
    
    
    NSLog(@"number:%f",n);
}

-(void)clear{
        NSLog(@"clear");
    n=0;
    m=0;
    number = 0;
    before = 0;
}

@end
