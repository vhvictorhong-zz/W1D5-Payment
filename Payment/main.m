//
//  main.m
//  Payment
//
//  Created by Victor Hong on 04/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Thank you for shopping at Acme.com");
        NSLog(@"Your total today is $xxx");
        NSLog(@"Please select your payment method:");
        NSLog(@"1: Paypal, 2: Stripe, 3: Amazon");
        
        int *inputMethod = [InputHandler getInput];
        
        PaymentGateway *paymentGateway = [[PaymentGateway alloc]init];
        
        [paymentGateway processPaymentAmount:inputMethod];
        
    }
    
    return 0;
}
