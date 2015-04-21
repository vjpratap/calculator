//
//  CalculaterBrain.h
//  Calculater
//
//  Created by Vijay Pratap Singh on 20/04/15.
//  Copyright (c) 2015 Vijay Pratap Singh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculaterBrain : NSObject {
    double operand;
    NSString *waitingOperation;
    double waitingOperand;
}

- (void)setOperand:(double)anOperand;
- (double)performOperation:(NSString *)operation;

@end
