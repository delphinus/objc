#import <Foundation/NSObject.h>

@class NSString;

@interface Fraction: NSObject
{
    int sgn; // sign - 符号
    int num; // numerator - 分子
    int den; // denominator - 分母
}

+ (id)fractionWithNumerator: (int)n denominator: (int)d;
- (id)initWithNumerator: (int)n denominator: (int)d;
- (Fraction *)add: (Fraction *)obj;
- (Fraction *)sub: (Fraction *)obj;
- (Fraction *)mul: (Fraction *)obj;
- (Fraction *)div: (Fraction *)obj;
- (NSString *)description;

@end;

// vim:se ft=objc:
