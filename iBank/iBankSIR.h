//
//  iBankSIR.h
//  iBank
//
//  Created by Yogesh Kumbhare on 8/30/13.
//  Copyright (c) 2013 Yogesh Kumbhare. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface iBankSIR : NSObject

-(int) interestrateforloan:(NSString *) amountString;
-(int) periodMonths:(NSString *) periodString;

-(int) investmentReturn:(int)investAmount investperiod:(int)period;
-(int) investinterestamount:(int)investamount investperiod:(int)period;


@end
