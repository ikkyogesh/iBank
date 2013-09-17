//
//  iBankLoanViewController.m
//  iBank
//
//  Created by Yogesh Kumbhare on 8/29/13.
//  Copyright (c) 2013 Yogesh Kumbhare. All rights reserved.
//

#import "iBankLoanViewController.h"
#import "iBankSIR.h"

@interface iBankLoanViewController ()

@end

@implementation iBankLoanViewController
@synthesize amount;
@synthesize periodLabel;
@synthesize interestLabel;
@synthesize totalPaymentLabel;

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

- (IBAction)submit:(UIButton *)sender;
{
    //self.amount.text = [NSString stringWithFormat:@"It worked submit was pressed"];
    [amount resignFirstResponder];
    
    [self process];
    
}

- (IBAction)dismissKeyboard:(UIButton *)sender
{
    [amount resignFirstResponder];
    
}
-(void)process
{
    iBankSIR *bank = [[iBankSIR alloc] init];
    char percentage = '%';
    int loanAmount = [amount.text intValue];
    int interestRate = [bank interestrateforloan:amount.text];
    int months = [bank periodMonths:amount.text];
    int tinterest = loanAmount*interestRate/100*months/12;
    
    if (loanAmount == 0) {
        
        UIAlertView *invalidMessage = [[UIAlertView alloc] initWithTitle:@"Invalid Entry" message:@"Please enter a valid number" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [invalidMessage show];
    }
    else {
    
        self.interestLabel.text = [NSString stringWithFormat:@"%i%c",interestRate,percentage];
        self.periodLabel.text = [NSString stringWithFormat:@"%i months", months];
        self.totalPaymentLabel.text = [NSString stringWithFormat:@"Rs. %i",(loanAmount + tinterest)];
    }
    
                                                                    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
