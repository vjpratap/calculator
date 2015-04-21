//
//  ViewController.h
//  Calculater
//
//  Created by Vijay Pratap Singh on 17/04/15.
//  Copyright (c) 2015 Vijay Pratap Singh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculaterBrain.h"

@interface ViewController : UIViewController{
    IBOutlet UILabel *display;
    CalculaterBrain *brain;
    BOOL userInAMiddleOfTypingANumber;
}

-(IBAction)digitPressed:(UIButton *)sender;
-(IBAction)operationPressed:(UIButton *)sender;
@end

