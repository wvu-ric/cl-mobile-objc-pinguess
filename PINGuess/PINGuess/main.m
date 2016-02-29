//
//  main.m
//  PINGuess
//
//  Created by Ricky Kirkendall on 1/19/16.
//  Copyright © 2016 CodeLab. All rights reserved.
// Totally had lots of help on this one too.


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *pinNumber = @"5412";
        
        for (int i = 0; i < 10000; i++) {
            NSString *formatted = [NSString stringWithFormat:@"%04d",i];
            
            if ([pinNumber isEqualToString:formatted]) {
                NSLog(@"The pin number is %i", i);
            }
        }
    }
    return 0;
}

/*
 Use the following line of code to convert an integer into a 4 digit string (where i is the int):
 
 NSString *formatted = [NSString stringWithFormat:@"%04d",i];
 
 Use the following line of code to check to see if your pin guess is equal to the pinNumber:
 
 [pinNumber isEqualToString:formatted]
 
 */
