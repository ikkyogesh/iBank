//
//  iBankLoanViewController.h
//  iBank
//
//  Created by Yogesh Kumbhare on 8/29/13.
//  Copyright (c) 2013 Yogesh Kumbhare. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iBankLoanViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *amount;
@property (strong, nonatomic) IBOutlet UILabel *periodLabel;
@property (strong, nonatomic) IBOutlet UILabel *interestLabel;
@property (strong, nonatomic) IBOutlet UILabel *totalPaymentLabel;

-(IBAction)submit:(UIButton *)sender;

-(IBAction)dismissKeyboard:(UIButton *)sender;
 
@end
