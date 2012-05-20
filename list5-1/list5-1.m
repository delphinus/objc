#import <Foundation/NSObject.h>

int main(void) {
    id obj = [[NSObject alloc] init];
    NSLog(@"init: %d\n", (int)[obj retainCount]);
    [obj retain];
    NSLog(@"retain: %d\n", (int)[obj retainCount]);
    [obj retain];
    NSLog(@"retain: %d\n", (int)[obj retainCount]);

    [obj release];
    NSLog(@"release: %d\n", (int)[obj retainCount]);
    [obj release];
    NSLog(@"release: %d\n", (int)[obj retainCount]);
    [obj release];

    return 0;
}

// vim:se ft=objc:
