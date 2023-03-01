//
//  Fraction.h
//  MIDC0301
//
//  Created by Leo Ho on 2023/3/1.
//

#import <Foundation/NSObject.h>

@interface Fraction : NSObject

/// 分子
@property int numerator;

/// 分母
@property int denominator;

/// 帶分數的整數部分
@property int num;

/// 輸出結果
- (void) print;

/// 分數相加
/// - Parameters:
///   - frac: Fraction class
/// - Returns: Fraction class
- (Fraction *) add:(Fraction *)frac;

/// 輾轉相除法
- (void) gcd;

@end
