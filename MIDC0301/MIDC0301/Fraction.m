//
//  Fraction.m
//  MIDC0301
//
//  Created by Leo Ho on 2023/3/1.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

@implementation Fraction

@synthesize num, numerator, denominator;

/// 輸出結果
- (void) print {
    if (num != 0) {
        NSLog(@"%i %i/%i", num, numerator, denominator);
    } else {
        NSLog(@"%i/%i", numerator, denominator);
    }
}

/// 分數相加
/// - Parameters:
///   - frac: Fraction class
/// - Returns: Fraction class
- (Fraction *) add:(Fraction *)frac {
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * frac.denominator + denominator * frac.numerator;
    result.denominator = denominator * frac.denominator;
    [result gcd];
    return result;
}

/// 輾轉相除法
- (void)gcd {
    int u = abs(num) * denominator + numerator;
    int v = denominator;
    int temp;
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    numerator /= u;
    denominator /= u;
    num = 0;
    if (numerator >= denominator) {
        num = numerator / denominator;
        numerator %= denominator;
    }
}

@end
