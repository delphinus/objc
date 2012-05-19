#import "Volume.h"

@implementation Volume
- (id) initWithMin: (int)a max: (int)b step: (int)s {
    if ((self = [super init]) != nil) {
        val = min = a;
        max = b;
        step = s;
        }
    return self;
}

- (int)value { return val; }

- (id)up {
    if ((val += step) > max) {
        val = max;
    }
    return self;
}

- (id)down {
    if ((val -= step) < min) {
        val = min;
    }
    return self;
}
@end

// vim:se ft=objc:
