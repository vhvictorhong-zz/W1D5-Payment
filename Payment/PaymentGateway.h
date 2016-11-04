//
//  PaymentGateway.h
//  Payment
//
//  Created by Victor Hong on 04/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentProtocol <NSObject>

-(void)processPaymentAmount:(NSInteger)amount;

@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id<PaymentProtocol> paymentDelegate;

-(NSInteger)generateRandomValue;
-(void)processPaymentAmount:(NSInteger)amount;

@end
