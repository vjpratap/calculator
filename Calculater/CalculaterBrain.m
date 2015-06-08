//
//  CalculaterBrain.m
//  Calculater
//
//  Created by Vijay Pratap Singh on 20/04/15.
//  Copyright (c) 2015 Vijay Pratap Singh. All rights reserved.
//

#import "CalculaterBrain.h"

@implementation CalculaterBrain

- (void)setOperand:(double)anOperand
{
    operand = anOperand;
}

- (void)performWaitingOperation
{
    
    if ([@"+" isEqual:waitingOperation]) {
        operand = waitingOperand + operand;
    } else if([@"-" isEqual:waitingOperation]){
        operand = waitingOperand - operand;
    } else if([@"*" isEqual:waitingOperation]){
        operand = waitingOperand * operand;
    } else if([@"-" isEqual:waitingOperation]){
        if (operand) {
            operand = waitingOperand / operand;
        }
    }
}

- (double)performOperation:(NSString *)operation
{
    if ([operation isEqual:@"sqrt"]) {
        operand = sqrt(operand);
    }
    else if ([operation isEqualToString:@"sq"]){
        operand = pow(operand, 2);
    }
    else{
        [self performWaitingOperation];
        waitingOperation = operation;
        waitingOperand = operand;
    }
    return operand;
}

@end
