#import <Foundation/NSObject.h>
#import <stdio.h>

@interface A: NSObject
- (void)whoAreYou;
@end

@implementation A
- (void)whoAreYou { NSLog(@"I'm %@\n", [self class]); }
@end

@interface B: A
@end

@implementation B
@end

int main(void) {
    id obj;
    int n;

    scanf("%d", &n);
    switch (n) {
        case 0: obj = [[A alloc] init]; break;
        case 1: obj = [[B alloc] init]; break;
        case 2: obj = [[NSObject alloc] init]; break;
    }
    [obj whoAreYou];
    return 0;
}

// vim:se ft=objc:
