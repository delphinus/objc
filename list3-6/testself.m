#import <Foundation/NSObject.h>

@interface A: NSObject
- (void)method1;
- (void)method2;
@end

@implementation A
- (void)method1 { NSLog(@"method1 of Class A\n"); }
- (void)method2 { NSLog(@"method2 of Class A\n"); }
@end

@interface B: A
- (void)method2;
@end

@implementation B
- (void)method2 {
    NSLog(@"method2 of Class B\n");
    NSLog(@"self --> ");
    [self method1];
    NSLog(@"super--> ");
    [super method2];
}
@end

@interface C: B
    - (void)method1;
@end

@implementation C
- (void)method1 { NSLog(@"method1 of Class C\n"); }
@end

int main(void) {
    id x = [[B alloc] init];
    id y = [[C alloc] init];
    NSLog(@"--- instance of B ---\n");
    [x method1];
    [x method2];
    NSLog(@"--- instance of C ---\n");
    [y method1];
    [y method2];
    return 0;
}

// vim:se ft=objc:
