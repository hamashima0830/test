//
//  ViewController.h
//  test
//
//  Created by 濱島　伸太郎 on 12/10/16.
//  Copyright (c) 2012年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <math.h>

#import "statemachine.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *display;
- (IBAction)plusminus:(id)sender;

- (IBAction)small:(id)sender;



- (IBAction)tan:(id)sender;


- (IBAction)m_out:(id)sender;
- (IBAction)m_set:(id)sender;
- (IBAction)waru:(id)sender;
- (IBAction)kakeru:(id)sender;
- (IBAction)hiku:(id)sender;

- (IBAction)cos:(id)sender;
- (IBAction)plus:(id)sender;
- (IBAction)four:(id)sender;
- (IBAction)five:(id)sender;
- (IBAction)six:(id)sender;
- (IBAction)seven:(id)sender;
- (IBAction)eight:(id)sender;
- (IBAction)nine:(id)sender;
- (IBAction)two:(id)sender;
- (IBAction)one:(id)sender;
- (IBAction)zero:(id)sender;
- (IBAction)clear:(id)sender;
- (IBAction)three:(id)sender;
- (IBAction)asin:(id)sender;
- (IBAction)acos:(id)sender;
- (IBAction)atan:(id)sender;




@property enum {plus,hiku,waru,kakeru,ic,ans,afterans,small} state;
- (IBAction)ans:(id)sender;


@property(readonly) statemachine *model;

- (IBAction)log_e:(id)sender;
- (IBAction)log_10:(id)sender;
- (IBAction)neipia:(id)sender;
- (IBAction)sqrt:(id)sender;
- (IBAction)pi:(id)sender;
- (IBAction)sin:(id)sender;


@end
