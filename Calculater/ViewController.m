//
//  ViewController.m
//  Calculater
//
//  Created by Vijay Pratap Singh on 17/04/15.
//  Copyright (c) 2015 Vijay Pratap Singh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (CalculaterBrain *)brain
{
    if (!brain) {
        brain = [[CalculaterBrain alloc] init];
    }
    return brain;
}

-(IBAction)digitPressed:(UIButton *)sender
{
    NSString *digit = [[sender titleLabel] text];
    if (userInAMiddleOfTypingANumber) {
        [display setText:[[display text] stringByAppendingString:digit]];
    }else{
        [display setText:digit];
        userInAMiddleOfTypingANumber = YES;
    }
}      
-(IBAction)operationPressed:(UIButton *)sender
{
    if (userInAMiddleOfTypingANumber) {
        [self.brain setOperand:[[display text] doubleValue]];
        userInAMiddleOfTypingANumber = NO;
    }
    NSString *operation = [[sender titleLabel] text];
    double result = [[self brain] performOperation:operation];
    [display setText:[NSString stringWithFormat:@"%g",result]];
    
}

//- (void)viewDidLoad {
//    [super viewDidLoad];
//    // Do any additional setup after loading the view, typically from a nib.
//}
//
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

@end
