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
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Thank you for shopping at Acme.com");
        NSLog(@"Your total today is $xxx");
        NSLog(@"Please select your payment method:");
        NSLog(@"1: Paypal, 2: Stripe, 3: Amazon");
        
        //get input
        int inputMethod = [InputHandler getInput];
        
        //init payment
        PaymentGateway *paymentGateway = [[PaymentGateway alloc]init];
        PaypalPaymentService *paypalPaymentService = [[PaypalPaymentService alloc] init];
        StripePaymentService *stripePaymentService = [[StripePaymentService alloc] init];
        AmazonPaymentService *amazonPaymentService = [[AmazonPaymentService alloc] init];
        
        switch (inputMethod) {
            case 1:
                paymentGateway.paymentDelegate = paypalPaymentService;
                break;
            case 2:
                paymentGateway.paymentDelegate = stripePaymentService;
                break;
            case 3:
                paymentGateway.paymentDelegate = amazonPaymentService;
                break;
            default:
                break;
        }
        
        [paymentGateway processPaymentAmount:paymentGateway.generateRandomValue];
        
    }
    
    return 0;
}
