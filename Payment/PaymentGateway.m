//
//  PaymentGateway.m
//  Payment
//
//  Created by Victor Hong on 04/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(NSInteger)generateRandomValue {
    
    //generate random number
    return arc4random_uniform(901) + 100;
    
}

-(void)processPaymentAmount:(NSInteger)amount {
    
    //call delegate
    [self.paymentDelegate processPaymentAmount:self.generateRandomValue];
    
    //Test method
    NSLog(@"process payment: %ld", (long)amount);
    
}

@end
