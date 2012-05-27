#import <Foundation/NSObject.h>
#import <stdio.h>

unsigned long rnd = 201109;

@interface testObj: NSObject
- (int)testMethod;
@end

@implementation testObj
- (int)testMethod {
    rnd = rnd * 1103515245UL + 12345; // 一様乱数を計算する
    return (rnd & 1) ? 1 : -1;
}
@end

// vim:se ft=objc:
