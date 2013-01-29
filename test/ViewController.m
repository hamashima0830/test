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

@synthesize model;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setState:ic];//ic = initial condition（初期状態）
    [self setState_enzan:ic_enzan];
    model = [[statemachine alloc]init];
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
    m=model.number;
    [model setState_enzan:sin_state];
    [self setState:ic];
    [model enzan:n aiueo:m];
}



- (IBAction)cos:(id)sender {
    
    m=model.number;
    [model setState_enzan:sin_state];
    [self setState:ic];
    [model enzan:n aiueo:m];
}


- (IBAction)sin:(id)sender {

    m=model.number;
    [model setState_enzan:sin_state];
    [self setState:ic];
    [model enzan:n aiueo:m];
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
    m=model.number;
    [model setState_enzan:log_10_state];
    [self setState:ic];
    [model enzan:n aiueo:m];
}



- (IBAction)log_10:(id)sender {
    m=model.number;
    [model setState_enzan:log_10_state];
    [self setState:ic];
    [model enzan:n aiueo:m];
}



//neipiaとpiはあえて分離させずに残しています。
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


- (IBAction)sqrt:(id)sender {//平方根のコントローラ
    m=model.number;
    [model setState_enzan:sqrt_state];
    [self setState:ic];
    [model enzan:n aiueo:m];
    
}



- (IBAction)plus:(id)sender {//足し算のコントローラ
    NSLog(@"plus");
    [model setState_enzan:plus];
    [self setState:ic];
    m=model.number;
    model.number = 0;
    model.before = 0;
    [model enzan:n aiueo:m];
    NSLog(@"plus_n:%f",n);
    NSLog(@"plus_m:%f",m);
    [[self display] setText:@"0"];
    //[[self display] setText:[ NSString stringWithFormat:@"%d",0]];
    
}


- (IBAction)waru:(id)sender {//割り算のコントローラ
    [model setState_enzan:waru];
    [self setState:ic];
    m=model.number;
    model.number = 0;
    model.before = 0;
    [model enzan:n aiueo:m];
    [[self display] setText:@"0"];
    
}

- (IBAction)kakeru:(id)sender {//かけ算のコントローラ
    [model setState_enzan:kakeru];
    [self setState:ic];
    m=model.number;
    model.number = 0;
    model.before = 0;
    [model enzan:n aiueo:m];
    [[self display] setText:@"0"];
}

- (IBAction)hiku:(id)sender {//引き算のコントローラ
    [model setState_enzan:hiku];
    [self setState:ic];
    m=model.number;
    model.number = 0;
    model.before = 0;
    [model enzan:n aiueo:m];
    [[self display] setText:@"0"];
    
}




- (IBAction)ans:(id)sender {//回答のコントローラ。何か演算ボタンを押してansボタンを入力するとその演算結果が出るようにしてある。
    
    NSLog(@"ans_n:%f",n);
    [[self display] setText:[ NSString stringWithFormat:@"%g",[model enzan:model.number aiueo:m]]];


    }
    
- (IBAction)one:(id)sender {
    
    model.number = 1;
    [model calc];
    [[self display] setText:[ NSString stringWithFormat:@"%g",model.number]];

    
}

- (IBAction)two:(id)sender {
    
    model.number = 2;
    [model calc];
    [[self display] setText:[ NSString stringWithFormat:@"%g",model.number]];
}


- (IBAction)three:(id)sender {
    
    model.number = 3;
    [model calc];
    [[self display] setText:[ NSString stringWithFormat:@"%g",model.number]];
}

- (IBAction)four:(id)sender {
    
    model.number = 4;
    [model calc];
    [[self display] setText:[ NSString stringWithFormat:@"%g",model.number]];}

- (IBAction)five:(id)sender {
    
    model.number = 5;
    [model calc];
    [[self display] setText:[ NSString stringWithFormat:@"%g",model.number]];}

- (IBAction)six:(id)sender {
   
    model.number = 6;
    [model calc];
    [[self display] setText:[ NSString stringWithFormat:@"%g",model.number]];}

- (IBAction)seven:(id)sender {
    
    model.number = 7;
    [model calc];
    [[self display] setText:[ NSString stringWithFormat:@"%g",model.number]];}

- (IBAction)eight:(id)sender {
    
    model.number = 8;
    [model calc];
    [[self display] setText:[ NSString stringWithFormat:@"%g",model.number]];}

- (IBAction)nine:(id)sender {
   
    model.number = 9;
    [model calc];
    [[self display] setText:[ NSString stringWithFormat:@"%g",model.number]];}
     
    

- (IBAction)zero:(id)sender {
    
    model.number = 0;
    [model calc];
    [[self display] setText:[ NSString stringWithFormat:@"%g",model.number]];}

- (IBAction)clear:(id)sender {
    [model clear];
    [self setState:ic];
    [[self display] setText:@"0"];
    n=0;
    m=0;
    p=0;
    model.number =0;
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
