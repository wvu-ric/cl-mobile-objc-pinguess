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
        //
        // pin number
        NSString *pinNumber = @"0782";
        //
        // finding pin
        for (int i = 0; i < 10000; i++) {
            NSString *formatted = [NSString stringWithFormat:@"%04d",i];
            if ([pinNumber isEqualToString:formatted]) {
                NSLog(@"Your pin is: %@",formatted);
                break;
            }
        }
    }
    return 0;
}