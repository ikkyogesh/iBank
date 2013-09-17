//
//  iBankSIR.m
//  iBank
//
//  Created by Yogesh Kumbhare on 8/30/13.
//  Copyright (c) 2013 Yogesh Kumbhare. All rights reserved.
//

#import "iBankSIR.h"

@implementation iBankSIR

-(int) interestrateforloan:(NSString *)amountString
{
    int amount = [amountString intValue];
    if (amount < 5000) {
        return 25;
        
    }
    if (amount < 10000) {
        return 15;
        
    }
    if (amount < 50000) {
        return 10;
        
    }
    else {
        return 8;
    }
}

-(int) periodMonths:(NSString *)periodString
{
    int amount = [periodString intValue];
    if (amount < 5000) {
        return 3;
        
    }
    if (amount < 10000) {
        return 12;
        
    }
    if (amount < 50000) {
        return 24;
        
    }
    else
        return 36;

}

-(int) investinterestamount:(int)investamount investperiod:(int)period
{
    return (investamount*6/100*period/12);
    
}

-(int) investmentReturn:(int)investAmount investperiod:(int)period
{
    int endvalue = investAmount + (investAmount*6/100*period/12);
    return endvalue;
}

@end
