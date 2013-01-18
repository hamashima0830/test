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
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

double n=0;
double m=0;
double l=0;
double p=0;

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
    [self setState:small];
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
- (int)sqrt
{
    return sqrt(n);
}


- (IBAction)plus:(id)sender {
    [self setState:plus];
    m=n;
    n=0;
    [[self display] setText:[ NSString stringWithFormat:@"%d",0]];
    
}


- (IBAction)waru:(id)sender {
    [self setState:waru];
    m=n;
    n=0;
    
}

- (IBAction)kakeru:(id)sender {
    [self setState:kakeru];
    m=n;
    n=0;
}

- (IBAction)hiku:(id)sender {
    [self setState:hiku];
    m=n;
    n=0;
    [[self display] setText:[ NSString stringWithFormat:@"%d",0]];
}




- (IBAction)ans:(id)sender {
        
    switch ([self state]) {
        case plus:
            n=m+n;
            [[self display] setText:[ NSString stringWithFormat:@"%g",n]];
            [self setState:afterans];
            break;
            
        case hiku:
            n=m-n;
            [[self display] setText:[ NSString stringWithFormat:@"%g",n]];
            [self setState:afterans];
            break;
            
        case waru:
            n=m/n;
            [[self display] setText:[ NSString stringWithFormat:@"%g",n]];
            [self setState:afterans];
            break;
            
        case kakeru:
            n=m*n;
            [[self display] setText:[ NSString stringWithFormat:@"%g",n]];
            [self setState:afterans];
            break;
            
        default:
            [[self display] setText:[ NSString stringWithFormat:@"%g",n]];
            break;
    }
    
    

   
    
}




- (IBAction)one:(id)sender {
    if(n==0)
    {
        n=1;
        if( [self state]== small)
        {
            p++;
            m=n;
            n=n/pow(10,p);
            n=n+m;
        }
    }
    else if ([self state]==ic||[self state]==afterans)
    {
        n=1;
        
    }
    
    else if( n != 0)
    {
        n=n*10+1;
    }
    
    
       
    [[self display] setText:[ NSString stringWithFormat:@"%g",n]];
    
}

- (IBAction)two:(id)sender {
    if(n==0)
    {
        n=2;
    }
    else if ([self state]==ic && n != 0)
    {
        n=n*10+2;
    }
    else if([self state]==afterans)
    {
        n=2;
    }
    else if( [self state]== small)
    {
        
    }
    
    else
    {
        n=n*10+2;
    }
    
    [[self display] setText:[ NSString stringWithFormat:@"%g",n]];
    
}


- (IBAction)three:(id)sender {
    if(n==0)
    {
        n=3;
    }
    else if([self state]==ic && n!=0)
    {
        n=n*10+3;
    }
    else if ([self state]==afterans)
    {
        n=3;
    }
    
    else
    {
        n=n*10+3;
    }
    
    [[self display] setText:[ NSString stringWithFormat:@"%g",n]];
}

- (IBAction)four:(id)sender {
    if(n==0)
    {
        n=4;
    }
    else if([self state]==ic && n != 0)
    {
        n=n*10+4;
    }
    else if([self state]==afterans)
    {
        n=4;
    }
    
    else
    {
        n=n*10+4;
    }
    
    [[self display] setText:[ NSString stringWithFormat:@"%g",n]];
}

- (IBAction)five:(id)sender {
    if(n==0)
    {
        n=5;
    }
    else if([self state]==ic && n != 0)
    {
        n=n*10+5;
    }
    else if([self state]==afterans)
    {
        n=5;
    }
    
    else
    {
        n=n*10+5;
    }
    
    [[self display] setText:[ NSString stringWithFormat:@"%g",n]];
}

- (IBAction)six:(id)sender {
    if(n==0)
    {
        n=6;
    }
    else if([self state]==ic && n !=0)
    {
        n=n*10+6;
    }
    else if([self state]==afterans)
    {
        n=6;
    }
    
    else
    {
        n=n*10+6;
    }
    
    [[self display] setText:[ NSString stringWithFormat:@"%g",n]];
}

- (IBAction)seven:(id)sender {
    if(n==0)
    {
        n=7;
    }
    else if([self state]==ic && n != 0)
    {
        n=n*10+7;
    }
    else if([self state]==afterans)
    {
        n=7;
    }
    
    else
    {
        n=n*10+7;
    }
    
    [[self display] setText:[ NSString stringWithFormat:@"%g",n]];
}

- (IBAction)eight:(id)sender {
    if(n==0)
    {
        n=8;
    }
    else if([self state]==ic && n !=0)
    {
        n=n*10+8;
    }
    else if([self state]==afterans)
    {
        n=8;
    }
    else
    {
        n=n*10+8;
    }
    
    [[self display] setText:[ NSString stringWithFormat:@"%g",n]];
}

- (IBAction)nine:(id)sender {
    if(n==0)
    {
        n=9;
    }
    else if([self state]==ic && n !=0)
    {
        n=n*10+9;
    }
    else if([self state]==afterans)
    {
        n=9;
    
    }
    else
    {
        n=n*10+9;
    }
    
    [[self display] setText:[ NSString stringWithFormat:@"%g",n]];
}

    

- (IBAction)zero:(id)sender {
    if(n==0)
    {
        n=0;
    }
    else if([self state]==ic && n!=0)
    {
        n=n*10;
    }
    else if([self state]==afterans)
    {
        n=0;
    }
    else
    {
        n=n*10;
    }
    [[self display] setText:[ NSString stringWithFormat:@"%g",n]];

}

- (IBAction)clear:(id)sender {
    [self setState:ic];
    [[self display] setText:@"0"];
    n=0;
    m=0;
    p=0;
}
@end
