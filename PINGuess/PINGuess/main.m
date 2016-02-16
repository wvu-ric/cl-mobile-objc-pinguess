//
//  main.m
//  PINGuess
//
//  Created by Ricky Kirkendall on 1/19/16.
//  Copyright © 2016 CodeLab. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // This first NSString creates the pin number as a string
        NSString *pinNumber = @"602";
        //This line convert the pinNumber string to an integer and stores it as the new variable integer pin
        // I didn't know how to correct this warning for turning a long floating point number to an integer
        
        int integerPin = [pinNumber integerValue];
        // The stringwithformat function then converts the integer to a string again however with zeros added to complete the 4 digit pin
        // This allows the program to work even if the user inputs less than a complete 4 digit pin guess
        NSString *adjustedPin = [NSString stringWithFormat:@"%04d",integerPin];
        NSLog(@"The pin number is %@...",pinNumber);
        NSLog(@"The adjusted pin is %@...",adjustedPin);
        
        // Creating the index variable i for the for loop
        int i;
        // For loop used to check different guesses of the pin code from 0 to 9999
        for (i=0; i<10000; i++) {
            
            //Line 31 converts the interger index i to a string with 4 digits
            NSString *formatted = [NSString stringWithFormat:@"%04d",i];
            
            //The if statement in lines 36-39 checks to see if the index is the same as the pin code and alerts the user if it is and then breaks the loop
            //The condition of the if statment uses the isEqualToString function to output a Boolean value as 1 for Yes and 0 for No...
            if ([adjustedPin isEqualToString:formatted] == 1) {
                NSLog(@"You have found the pin code...It is %d...",i);
                break;
            }
        }
        
    }
    return 0;
}