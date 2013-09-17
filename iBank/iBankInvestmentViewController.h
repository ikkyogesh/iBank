//
//  iBankInvestmentViewController.h
//  iBank
//
//  Created by Yogesh Kumbhare on 8/29/13.
//  Copyright (c) 2013 Yogesh Kumbhare. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iBankInvestmentViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *investTextField;
@property (strong, nonatomic) IBOutlet UITextField *periodTextField;
@property (strong, nonatomic) IBOutlet UILabel *interestLabel;
@property (strong, nonatomic) IBOutlet UILabel *returnLabel;

-(IBAction)submit:(UIButton *)sender;
-(IBAction)dismissKeyboard:(UIButton *)sender;

@end
