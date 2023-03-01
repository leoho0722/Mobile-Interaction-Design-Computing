//
//  main.m
//  MIDC0301
//
//  Created by Leo Ho on 2023/3/1.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *frac1 = [[Fraction alloc] init];
        Fraction *frac2 = [[Fraction alloc] init];
        Fraction *result;
        
        frac1.numerator = 1;
        frac1.denominator = 3;
        frac2.numerator = 3;
        frac2.denominator = 3;
        
        result = [frac1 add:frac2];
        [result print];
    }
    return 0;
}
