#import <Foundation/NSObject.h>
#import "Volume.h"

int main(void) {
    id v, w;

    v = [[Volume alloc] initWithMin: 0 max: 10 step: 2];
    w = [[Volume alloc] initWithMin: 0 max: 9 step: 3];

    [v up];
    NSLog(@"%d %d\n", [v value], [w value]);

    [v up];
    [w up];
    NSLog(@"%d %d\n", [v value], [w value]);

    [v down];
    [w down];
    NSLog(@"%d %d\n", [v value], [w value]);

    return 0;
}
// vim:se ft=objc:
