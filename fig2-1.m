#import <Foundation/Foundation.h>

@interface Volume : NSObject
{
    int val;
    int min, max, step;
}

- (id)initWithMin: (int) a max: (int)b step: (int)s;
- (int)value;
- (id)up;
- (id)down;
@end

@implementation Volume
- (id)initWithMin: (int) a max: (int)b step: (int)s
{
    if ((self = [super init]) != nil) {
        val = min = a;
        max = b;
        step = s;
    }
    return self;
}

- (int)value
{
    return val;
    }

- (id)up
{
    if ((val += step) > max)
        val = max;
    return self;
}

- (id)down
{
    if ((val -= step) < min)
        val = min;
    return self;
}
@end

int main(void)
{
    id v, w;

    v = [[Volume alloc] initWithMin:0 max:10 step:2];
    w = [[Volume alloc] initWithMin:0 max:9 step:3];
    [v up];
    NSLog("%d %d\n", [v value], [w value]);
    [v up];
    [w up];
    NSLog("%d %d\n", [v value], [w value]);
    [v down];
    [w down];
    NSLog("%d %d\n", [v value], [w value]);
    return 0;
}
