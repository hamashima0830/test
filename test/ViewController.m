//
//  ViewController.m
//  test
//
//  Created by 濱島　伸太郎 on 12/10/16.
//  Copyright (c) 2012年 admin. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()

@end

@implementation ViewController

//@synthesize statemachine;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setState:ic];//ic = initial condition（初期状態）
    [self setState_enzan:ic_enzan];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//#synthesize model;

double n;
double m;
double l;
double p;

//メモリの入力m_setと出力m_out

- (IBAction)m_out:(id)sender {
    n=l;
    [[self display] setText:[ NSString stringWithFormat:@"%f",n]];
}

- (IBAction)m_set:(id)sender {
    l=n;
}

- (IBAction)asin:(id)sender {
    m=(n*360)/2*M_PI;
    n=asin(m);
    [[self display] setText:[ NSString stringWithFormat:@"%f",n]];
}

- (IBAction)acos:(id)sender {
    m=(n*360)/2*M_PI;
    n=asin(m);
    [[self display] setText:[ NSString stringWithFormat:@"%f",n]];
}

- (IBAction)atan:(id)sender {
    m=(n*360)/2*M_PI;
    n=asin(m);
    [[self display] setText:[ NSString stringWithFormat:@"%f",n]];
}


- (IBAction)tan:(id)sender {
    m=(n/360)*2*M_PI;
    n=tan(m);
    [[self display] setText:[ NSString stringWithFormat:@"%f",n]];
}
- (double)tan
{
    m=(n/360)*2*M_PI;
    return tan(m);
}


- (IBAction)cos:(id)sender {
    
    n=[self cos];
    [[self display] setText:[ NSString stringWithFormat:@"%f",n]];
}
- (double)cos
{
    m=(n/360)*2*M_PI;
    return cos(m);
}


- (IBAction)sin:(id)sender {
    
    
    n=[self sin];
    [[self display] setText:[ NSString stringWithFormat:@"%f",n]];
    
}

- (double)sin
{
    m=(n/360)*2*M_PI;
    return sin(m);
}


- (double)plusminus
{
    return 0-n;
}


- (IBAction)plusminus:(id)sender {
    n=[self plusminus];
    [[self display] setText:[ NSString stringWithFormat:@"%g",n]];
}

- (IBAction)small:(id)sender;
{
    _state=small;
    p++;
}




- (IBAction)log_e:(id)sender {
    n=[self log_e];
    [[self display] setText:[ NSString stringWithFormat:@"%f",n]];
}



- (IBAction)log_10:(id)sender {
    n=[self log_10];
    [[self display] setText:[ NSString stringWithFormat:@"%f",n]];
}

- (double)log_e{
    return log(n);
}

- (double)log_10{
    
    return log10(n);
}

- (IBAction)pi:(id)sender {
    n=[self pi];
    [[self display] setText:[ NSString stringWithFormat:@"%f",n]];
}

- (double)pi
{
    return M_PI;
}

- (IBAction)neipia:(id)sender {
    n=[self neipia];
    [[self display] setText:[ NSString stringWithFormat:@"%f",n]];
}

- (double)neipia
{
    return M_E;
}


- (IBAction)sqrt:(id)sender {
    n=[self sqrt];
    [[self display] setText:[ NSString stringWithFormat:@"%f",n]];
}
- (double)sqrt
{
    return sqrt(n);
}


- (IBAction)plus:(id)sender {
    [self setState_enzan:plus];
    [self setState:ic];
    m=n;
    n=0;
    NSLog(@"plus_n:%f",n);
    NSLog(@"plus_m:%f",m);
    //[[self display] setText:[ NSString stringWithFormat:@"%d",0]];
    
}


- (IBAction)waru:(id)sender {
    [self setState_enzan:waru];
    [self setState:ic];
    m=n;
    n=0;
    
}

- (IBAction)kakeru:(id)sender {
    [self setState:kakeru];
    [self setState:ic];
    m=n;
    n=0;
}

- (IBAction)hiku:(id)sender {
    [self setState_enzan:hiku];
    [self setState:ic];
    m=n;
    n=0;
    //[[self display] setText:[ NSString stringWithFormat:@"%d",0]];
}




- (IBAction)ans:(id)sender {
        
    switch ([self state_enzan]) {
        case plus:
            n=m+n;
            NSLog(@"plus_n:%f",n);
            NSLog(@"plus_m:%f",m);
            NSLog(@"plus");
            [[self display] setText:[ NSString stringWithFormat:@"%g",n]];
            [self setState:ic];
            [self setState_enzan:ic_enzan];
            break;
            
        case hiku:
            n=m-n;
            [[self display] setText:[ NSString stringWithFormat:@"%g",n]];
            [self setState:ic];
            [self setState_enzan:ic_enzan];
            break;
            
        case waru:
            n=m/n;
            [[self display] setText:[ NSString stringWithFormat:@"%g",n]];
            [self setState:ic];
            [self setState_enzan:ic_enzan];
            break;
            
        case kakeru:
            n=m*n;
            [[self display] setText:[ NSString stringWithFormat:@"%g",n]];
            [self setState:ic];
            [self setState_enzan:ic_enzan];
            break;
            
        default:
            [[self display] setText:[ NSString stringWithFormat:@"%g",n]];
            break;
    }
    
    

   
    
}




- (IBAction)one:(id)sender {
      
    [[self display] setText:[ NSString stringWithFormat:@"%g",[self calc:1]]];
    
}

- (IBAction)two:(id)sender {
    
    [[self display] setText:[ NSString stringWithFormat:@"%g",[self calc:2]]];
    
}


- (IBAction)three:(id)sender {
    
    [[self display] setText:[ NSString stringWithFormat:@"%g",[self calc:3]]];
}

- (IBAction)four:(id)sender {
    
    [[self display] setText:[ NSString stringWithFormat:@"%g",[self calc:4]]];
}

- (IBAction)five:(id)sender {
    
    [[self display] setText:[ NSString stringWithFormat:@"%g",[self calc:5]]];
}

- (IBAction)six:(id)sender {
   
    [[self display] setText:[ NSString stringWithFormat:@"%g",[self calc:6]]];
}

- (IBAction)seven:(id)sender {
    
    [[self display] setText:[ NSString stringWithFormat:@"%g",[self calc:7]]];
}

- (IBAction)eight:(id)sender {
    
    [[self display] setText:[ NSString stringWithFormat:@"%g",[self calc:8]]];
}

- (IBAction)nine:(id)sender {
   
    [[self display] setText:[ NSString stringWithFormat:@"%g",[self calc:9]]];
}

    

- (IBAction)zero:(id)sender {
    
    [[self display] setText:[ NSString stringWithFormat:@"%g",[self calc:0]]];

}

- (IBAction)clear:(id)sender {
    [self setState:ic];
    [[self display] setText:@"0"];
    n=0;
    m=0;
    p=0;
}
double before;
/*
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
    [[self display] setText:[ NSString stringWithFormat:@"%g",number]];
    n=number;
    return number;
    
    NSLog(@"number:%f",n);
}*/
@end
