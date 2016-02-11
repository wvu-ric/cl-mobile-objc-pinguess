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
        
        /*
         Use the following line of code to convert an integer into a 4 digit string (where i is the int):
         
         NSString *formatted = [NSString stringWithFormat:@"%04d",i];
         
         Use the following line of code to check to see if your pin guess is equal to the pinNumber:
         
         [pinNumber isEqualToString:formatted]
         
        */
        
        int i = 5412;
  
        
        NSString *pinString = [NSString stringWithFormat:@"%d", i];
        
        if ([pinNumber isEqualToString:pinString])
            NSLog(@"The pin number is %i", i);
        
    }


    return 0;
}