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
        // insert code here...
        
        NSString *pinNumber = @"5412";
        
        // for loop you know how many times it can run
        int i;
        for (i = 0; i <= 10000; i++)
        {
            
        // Use the following line of code to convert an integer into a 4 digit string (where i is the int)
            
            NSString *formatted = [NSString stringWithFormat:@"%04d",i];
            NSLog(formatted);
            
            // Use the following line of code to check to see if your pin guess is equal to the pinNumber:
            
            if ([pinNumber isEqualToString:formatted]) {
                NSLog(@"The pin number is 5412");
                break;
            }
            else {
                NSLog(@"Incorrect pin number");
            }
            
        }
     
        
    }
    return 0;
};