//
//  iBankInvestmentViewController.m
//  iBank
//
//  Created by Yogesh Kumbhare on 8/29/13.
//  Copyright (c) 2013 Yogesh Kumbhare. All rights reserved.
//

#import "iBankInvestmentViewController.h"
#import "iBankSIR.h"

@interface iBankInvestmentViewController ()

@end

@implementation iBankInvestmentViewController
@synthesize investTextField;
@synthesize periodTextField;
@synthesize interestLabel;
@synthesize returnLabel;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (IBAction)submit:(UIButton *)sender
{
    //self.investTextField.text = [NSString stringWithFormat:@"It worked"];
    [investTextField resignFirstResponder];
    [periodTextField resignFirstResponder];
    
    [self processFields];
}

- (IBAction)dismissKeyboard:(UIButton *)sender
{
    [investTextField resignFirstResponder];
    [periodTextField resignFirstResponder];
}

- (void) processFields
{

    iBankSIR *bank = [[iBankSIR alloc] init];
    
    if ([investTextField.text intValue] == 0) {
        UIAlertView *invalidInvest = [[UIAlertView alloc] initWithTitle:@"Invalid Entry" message:@"Plesae enter a valid Investment entry" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [invalidInvest show];
        
    }
    else if ([periodTextField.text intValue] == 0) {
        UIAlertView *invalidPeriod = [[UIAlertView alloc] initWithTitle:@"Invlaid Entry" message:@"Please enter a valid Period Entry" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [invalidPeriod show];
    }
    
    else {
   
        [interestLabel setText:[NSString stringWithFormat:@"Rs. %i",
                                [bank investinterestamount:
                                 [investTextField.text intValue] investperiod:[periodTextField.text intValue]]]];
        
        [returnLabel setText:[NSString stringWithFormat:@"Rs. %i",
                              [bank investmentReturn:[investTextField.text intValue] investperiod:[periodTextField.text intValue]]]];
        
    }
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
